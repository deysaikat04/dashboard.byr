<?php
/**
 * Created by PhpStorm.
 * User: Saikat Dey
 * Date: 30-10-2017
 * Time: 11:52 PM
 */
defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboard extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        $this->load->helper('form');
        $this->load->model('DashboardModel');
    }
		
    public function page($page = 'Stats')
    {
        if (!$this->ion_auth->logged_in()) {
            redirect('auth/login', 'refresh');
        } else {
            if (!file_exists(APPPATH . 'views/partial/' . $page . '.php')) {
                show_404();
            }
            if ($page === 'Portfolio') {
                $data['images'] = $this->DashboardModel->getPortfolioImages();
            } elseif ($page === 'Videos'){
                $data['videos'] = $this->DashboardModel->getVideos();
            } elseif ($page === 'ViewHotel'){
                $data['allAlbum']=$this->DashboardModel->getallAlbum();
            } 
            $data['page'] = 'partial/' . $page;
            $this->load->view('common/Dashboard', $data);
        }
    }    

    public function EditHotel($id = null)
    {
        if($id == null) {
            show_404();
        }
        $data['album'] = $this->DashboardModel->getAlbumDetailsbyId($id);
        $data['coverImage'] = $this->DashboardModel->getAlbumCoverImagesbyId($id);
        $data['count'] = $this->DashboardModel->imagecount($id);
        $data['albumImage'] = $this->DashboardModel->getAlbumImagesbyId($id);
			/*echo "<pre>";
			print_r($data);
			exit;*/
        if ($data['album']) {
            $data['page'] = 'partial/EditHotel';					
            $this->load->view('common/Dashboard', $data);
        } else {
            show_404();
        }

    }
    public function updateAlbumDetail($id){
        $this->load->model('DashboardModel');
        $this->form_validation->set_rules('hotelName', 'Name of the Hotel', 'trim|required|min_length[2]');
        $this->form_validation->set_rules('city', 'City', 'required');
        $this->form_validation->set_rules('rooms', 'No of Rooms', 'required');
        $this->form_validation->set_rules('beds', 'No of Beds', 'required');
        $this->form_validation->set_rules('location', 'Location', 'required');
        $this->form_validation->set_rules('cost', 'Cost Per Night', 'required');
			
        $this->form_validation->set_rules('toc', 'toc', 'trim|required');
        $toc = $this->input->post('toc'); 

        $albumFormData = array(
            'id' =>  $id,
            'h_name' => $this->input->post('hotelName'),
            'location' => $this->input->post('location'),
            'city' => $this->input->post('city'),
            'cpn' => $this->input->post('cost'),
            'rooms' => $this->input->post('rooms'),
            'beds' => $this->input->post('beds'),  
            'toc' => $toc,
            'tou' => date('Y-m-d H:i:s')
        );
			//echo "<pre>";
			//print_r($albumFormData);
			//exit;
        if ($this->form_validation->run() == FALSE) {
            $valERR = validation_errors();
            $this->session->set_flashdata('updateAlbumErr', $valERR);
            redirect(base_url() . 'Dashboard/page/AddAlbum');
        } else {
            $isUploaded = $this->DashboardModel->updateAlbum($albumFormData);
            if ($isUploaded) {
                $this->session->set_flashdata('updateAlbumSucc', "Record has been Updated.");
                header("Location: " . base_url('Dashboard/EditHotel/'.$albumFormData['id']));
            } else {
                $this->session->set_flashdata('updateAlbumErr', "We couldn't update the record.");
                header("Location: " . base_url('Dashboard/EditHotel/'.$albumFormData['id']));
            }
        }
    }
		public function viewBooked()
    {
        //load the model
        $this->load->model('DashboardModel');
        //load the method of model
        $data['bookedData']=$this->DashboardModel->selectBooked();     			
        //return the data in view
         if(!$this->ion_auth->logged_in()) {
            // redirect them to the login page
            redirect('auth/login', 'refresh');
        } else {
            $data['page'] = 'partial/Booked';
            $this->load->view('common/Dashboard', $data);
        }
    }
}