<?php




namespace HelloVideo\Models;


use Illuminate\Database\Eloquent\Model;

class Favorite extends Model {

	protected $table = 'favorites';
	protected $guarded = array();
	public static $rules = array();

	protected $fillable = array('user_id', 'video_id');

	public function user(){
		return $this->belongsTo('User')->first();
	}

	public function video(){
		return $this->belongsTo('Video')->first();
	}
}
