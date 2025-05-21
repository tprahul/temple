<?php

namespace App\Controllers;
use App\Models\TempleModel;
use App\Models\PoojaModel;
use App\Controllers\BaseController;
use CodeIgniter\HTTP\ResponseInterface;

class TempleController extends BaseController
{
    public function index()
    {
        header("Access-Control-Allow-Origin: *");
        $templeModel = new TempleModel();
        return $this->response->setJSON($templeModel->findAll());
    }
     public function show($id) {
        header("Access-Control-Allow-Origin: *");
        $templeModel = new TempleModel();
        $poojaModel = new PoojaModel();

        $temple = $templeModel->find($id);
        if (!$temple) return $this->response->setStatusCode(404)->setJSON(['error' => 'Not found']);

        $poojas = $poojaModel->where('temple_id', $id)->findAll();
        return $this->response->setJSON(['temple' => $temple, 'poojas' => $poojas]);
    }
}
