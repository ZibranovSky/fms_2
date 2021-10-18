<?php

namespace App\Http\Controllers;

use App\Model\Fhisip;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class ApiController extends Controller
{

    public function index()
    {
    
    // $fak = [
    //         ['fakultas' => "FHISIP"], 
    //         ['fakultas' => "FKIP"], 
    //         ['fakultas' => "FE"], 
    //         ['fakultas' => "FST"], 
    //         ['fakultas' => "PPS"],
    // ];

    // $status = [
    //     ['status' => "proses relayout"],
    //     ['status' => "final p2m2"],
    //     ['status' => "validasi pengampu"],
    //     ['status' => "master final"],
    //     ['status' => "siap terbit"],
    //     ['status' => "cetak"]
    // ];
        $fak = Fhisip::select('fakultas')->groupBy('fakultas')->orderBy('fakultas','ASC')->get();
        $status = Fhisip::select(DB::raw("TRIM(status) as status"))
        ->groupBy('status')
        ->where('status', "!=", "")
        ->get();

        $output = [];
        $inc = 0;
        foreach ($fak as $key_fak) {
         foreach ($status as $key_status) {
            $output[$inc]['fakultas'] = $key_fak['fakultas'];
            $output[$inc]['status'] = $this->replace_string($key_status['status']);
            $output[$inc]['total'] = $this->get_count_status($key_fak['fakultas'], $key_status['status']);
            $inc++;
         }   
        }

        return $this->succesWithData($output);        
    }

    public function show()
    {
        // $data = Fhisip::select('fakultas')->groupBy('fakultas')->get();
        // $status = Fhisip::select(DB::raw("TRIM(status) as status"))->groupBy('status')->where('status', "!=", "")->get();

        $fak = [
            ['fakultas' => "FHISIP"], 
            ['fakultas' => "FKIP"], 
            ['fakultas' => "FE"], 
            ['fakultas' => "FST"], 
            ['fakultas' => "PPS"],
    ];

    $status = [
        ['status' => "Proses Relayout" ],
        ['status' => "Final P2M2"],
        ['status' => "Validasi Pengampu"],
        ['status' => "Siap Cetak"],
        ['status' => "Siap Terbit"],
        ['status' => "Cetak"],
    ];
        $datas = [];
        $ret = [
            'fak' => $fak,
            'status' => $status
        ];

        $r = 0;
        foreach ($status as $key) {          
            for ($i = 0; $i < count($fak); $i++) {
                $datas['count_' . ($i+1)] = $this->get_count_status($fak[$i]['fakultas'], $key['status']);                   
            }       
            $ret["status"][$r]['totals'] = [$datas];            
            $ret['status'][$r]['status'] = $this->replace_string(ucfirst($key['status']));
            $r++;
        }

        return $this->succesWithData($ret);
    }

    public function get_count_status($fakultas, $status)
    {
        $data = Fhisip::where(['fakultas' => $fakultas, 'status' => $status])->count();
        // $ret = $data > 0 ? $data : "-";
        return $data;
    }

    public function create(Request $request)
    {
        $ret = [
            'fakultas' => $request->fakultas,
            'kode' => $request->kode,
            'judul' => $request->judul,
            "edisi_A5" => $request->edisi_A5,
            "edisi_A4" => $request->edisi_A4,
            "status" => $request->status,
            "layouter" => $request->layouter,
            "keterangan" => $request->keterangan
        ];

        Fhisip::insert($ret);
        return $this->succesWitmessage("Berhasil menyimpan data");
    }

    public function delete($id)
    {
        Fhisip::where('id_fhisip', $id)->delete();
        return $this->succesWitmessage("Berhasil menghapus data");
    }
    public function update(Request $request, $id)
    {
        $ret = [
            'fakultas' => $request->fakultas,
            'kode' => $request->kode,
            'judul' => $request->judul,
            "edisi_A5" => $request->edisi_A5,
            "edisi_A4" => $request->edisi_A4,
            "status" => $request->status,
            "layouter" => $request->layouter,
            "keterangan" => $request->keterangan
        ];

        DB::table("fhisip")->where("id_fhisip", $id)->update($ret);
        return $this->succesWitmessage("Berhasil mengupdate data");
    }

    function set_master_status()
    {
        $status = Fhisip::select(DB::raw("TRIM(status) as status"))->groupBy('status')->where('status', "!=", "")->get();
        foreach ($status as $key) {
            $insert = ['status_name' => $key->status];
            $cek = DB::table('master_status')->where($insert)->count();

            if ($cek == 0) {
                $id = DB::table('master_status')->insertGetId($insert);

                if (isset($id)) {
                    Fhisip::where(['status' => $key->status])->update(['status' => $id]);
                }
            }
        }
    }
}
