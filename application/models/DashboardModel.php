<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

/**
 * Created by PhpStorm.
 * User: dipan
 * Date: 14-08-2017
 * Time: 23:29
 */
class DashboardModel extends CI_Model
{
    public function insertMultipleImages($data)
    {
        $inserted = array();
        $dataCount = count($data);
        for($i = 0; $i < $dataCount; $i++) {
            $inserted = $this->db->insert('portfolio_tb', $data[$i]);
        }
        return $inserted;
    }
	public function addalbum($albumFormData) 
    {
        if ($this->db->insert('hotel_tb', $albumFormData)) {
            $lastDataId = $this->db->insert_id();
            return $lastDataId;
        } else {
            return false;
        }
	}
    public function insertCoverImage($albumDataCover)
    {
        $result = 0;
        if ($this->db->insert('image_tb', $albumDataCover)) {
            //$lastDataId = $this->db->insert_id();
            $result = 1;
        }
        return $result;
    }
    public function insertAlbumImages($data)
    {
        if($this->db->insert('image_tb', $data)){
            return true;
        } else {
            return false;
        }
    }
      
    public function getallAlbum()
    {
        $sql = "select * from hotel_tb a, image_tb i where a.id = i.h_id AND i.is_cover=1";
        $query = $this->db->query($sql);
        $data = $query->result_array();
        $count = count($data);
        if ($count < 1) {
            return false;
        } else {
            return $data;
        }
    }
    public function removeAlbumId($id)
    {
        $sql_child = "DELETE FROM  image_tb where h_id = $id";
        $query_child = $this->db->query($sql_child);
        if($query_child == 1) {
            $sql_par = "DELETE FROM  hotel_tb where id = $id";
            $query_par = $this->db->query($sql_par);
        }
        if ($query_par == 1) {
            return true;
        } else {
            return false;
        }
    }
    public function getAlbumDetailsbyId($id)
    {
        $sql = "select * from hotel_tb a where a.id = $id";
        $query = $this->db->query($sql);
        $data = $query->result_array();
        $count = count($data);
        if ($count < 1) {
            return false;
        } else {
            return $data;
        }
    }
    public function getAlbumCoverImagesbyId($id)
    {
        $sql = "select * from image_tb i where i.h_id = $id AND i.is_cover = 1";
        $query = $this->db->query($sql);
        $data = $query->result_array();
        $count = count($data);
        if ($count < 1) {
            return false;
        } else {
            return $data;
        }
    }
    public function getAlbumImagesbyId($id)
    {
        $sql = "select * from image_tb i where i.h_id = $id AND i.is_cover = 0";
        $query = $this->db->query($sql);
        $data = $query->result_array();
        $count = count($data);
        if ($count < 1) {
            return false;
        } else {
            return $data;
        }
    }
    public function imagecount($id)
    {
        $query = $this->db->query("select * from image_tb i where i.h_id = $id AND i.is_cover = 1");
        $row_count = $query->num_rows();
        return $row_count;
    }
    public function removeAlbumImage($id)
    {
        $sql = "DELETE FROM `image_tb` WHERE `id`= $id";
        $query = $this->db->query($sql);
        if ($query == 1) {
            return true;
        } else {
            return false;
        }
    }
    public function updateAlbum($albumFormData){
        $this->db->where('id', $albumFormData['id']);
        if($this->db->update('hotel_tb', $albumFormData)){
            return true;
        } else {
            return false;
        }
    }
	
		public function countAll(){
			$count = array();
			$query_album = $this->db->query("select * from hotel_tb");
			$row_album = $query_album->num_rows();
			$query_images = $this->db->query("select * from `image_tb`");
			$row_images = $query_images->num_rows();
			$query_portfolio = $this->db->query("select * from `user_tb`");
			$row_port = $query_portfolio->num_rows();
			$query_video = $this->db->query("SELECT * FROM `booking_detail`");
			$row_video = $query_video->num_rows();
			
			$count =array(
					'allAlbum' => $row_album,
					'allImages' => $row_images,
					'allUser' => $row_port,
					'allBook' => $row_video
			);
			return $count;			
		}
		public function selectBooked()
      {
				$sql = "SELECT * FROM `booking_detail` b, user_tb u, hotel_tb h where b.h_id = h.id and b.`u_id` = u.id;";
        $query = $this->db->query($sql);
        $data = $query->result_array();
        $count = count($data);
        if ($count < 1) {
            return false;
        } else {
            return $data;
        }
      }
	
}