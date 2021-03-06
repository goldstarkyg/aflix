<?php




namespace HelloVideo\Models;

use DB;

use Illuminate\Database\Eloquent\Model;

class VideoCategory extends Model {
	protected $guarded = array();

	protected $table = 'video_categories';

	public static $rules = array();

	public function videos(){
		return $this->hasMany('Video');
	}

	public function hasChildren(){
		if(DB::table('video_categories')->where('parent_id', '=', $this->id)->count() >= 1){
			return true;
		} else {
			return false;
		}
	}
}
