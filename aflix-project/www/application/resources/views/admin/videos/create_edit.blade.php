
@extends('admin.master')

@section('css')
	<link rel="stylesheet" href="{{ '/application/assets/js/tagsinput/jquery.tagsinput.css' }}" />
@stop
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script>
    $(document).ready(function(){
        $("input[type=file]").change(function(){
            var filename = $(this).val().replace(/^.*\\/, "");
            //alert(filename);
            document.getElementById("fileid").value = filename;
        });

    });
</script>

@section('content')
<?php 
    $contribute = $admin_user->contribute;
?>
	<div id="admin-container">
		<!-- This is where -->

		<div class="admin-section-title">
			@if(!empty($video->id))
				<h3>{{ $video->title }}</h3>
                <?php $title=strtolower($video->title);?>
                <?php $string = str_replace(' ','-', $title); ?>
				<a href="{{ URL::to('video') . '/' . $video->id . '/' .$string }}" target="_blank" class="btn btn-info">
					<i class="fa fa-eye"></i> Preview <i class="fa fa-external-link"></i>
				</a>
			@else
				<h3><i class="entypo-plus"></i> Add New Video</h3>
			@endif
		</div>
		<div class="clear"></div>
		<form action="http://aflix-storage.storage.googleapis.com" method="post" enctype="multipart/form-data">
			<div id="awsserver" class="modal fade" role="dialog">
				<div class="modal-dialog">

					<!-- Modal content-->
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal">&times;</button>
							<h4 class="modal-title">Upload Video Google Cloude Storage</h4>
						</div>
						<div class="modal-body">
							<input type="hidden" name="success_action_redirect" value="<?php echo 'http://'. $_SERVER['SERVER_NAME'] . $_SERVER['REQUEST_URI'];'' ?>">
							<input type="hidden" id="fileid" name="key"  class="form-control">
							<br>
							<input type="file" multiple="true" class="form-control" name="file" id="buttonid" />
							<br>
							<input type="submit" value="Upload Video" class="btn btn-success pull-right" />
							<input type="hidden" name="_token" value="<?= csrf_token() ?>" />

						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
						</div>
					</div>

				</div>
			</div>
		</form>

		<form method="POST" action="{{ $post_route }}" accept-charset="UTF-8" file="1"  enctype="multipart/form-data">

			@if(!empty($video->created_at))
				<div class="row">
					<div class="col-md-9">
						@endif
						<div class="panel panel-primary" data-collapsed="0"> <div class="panel-heading">
								<div class="panel-title">Title</div> <div class="panel-options"> <a href="#" data-rel="collapse"><i class="entypo-down-open"></i></a> </div></div>
							<div class="panel-body" style="display: block;">
								<p>Add the video title in the textbox below:</p>
								<script type="text/javascript">
                                    function blockSpecialChar(e){
                                        var k;
                                        document.all ? k = e.keyCode : k = e.which;
                                        return ((k > 64 && k < 91) || (k > 96 && k < 123) || k == 8 || k == 32 || (k >= 48 && k <= 57));

                                    }
								</script>
								<input type="text" class="form-control" name="title" id="txtInput" onkeypress="return blockSpecialChar(event)" required placeholder="Video Title" value="@if(!empty($video->title)){{ $video->title }}@endif" />
							</div>
						</div>

						@if(!empty($video->created_at))

					</div>
					<div class="col-sm-3">
						<div class="panel panel-primary" data-collapsed="0"> <div class="panel-heading">
								<div class="panel-title">Created Date</div> <div class="panel-options"> <a href="#" data-rel="collapse"><i class="entypo-down-open"></i></a> </div></div>
							<div class="panel-body" style="display: block;">
								<p>Select Date/Time Below</p>
								<input type="text" class="form-control" name="created_at" id="created_at" placeholder="" value="@if(!empty($video->created_at)){{ $video->created_at }}@endif" />
							</div>
						</div>
					</div>
				</div>
			@endif


			<div class="panel panel-primary" data-collapsed="0"> <div class="panel-heading">
					<div class="panel-title">Video Image Slider </div> <div class="panel-options"> <a href="#" data-rel="collapse"><i class="entypo-down-open"></i></a> </div></div>
				<div class="panel-body" style="display: block;">
					@if(!empty($video->image))
						<img src="{{ Config::get('site.uploads_dir') . 'images/' . $video->image }}" class="video-img" width="200"/>
					@endif
					<p style="color:red;">Select the video Slider Min-(Width:1500px And Height:500px):</p>
					<input type="file" multiple="true" onchange="readURL(this.value)" class="form-control" name="image" <?php if(@$video->id==null){ echo "required"; }else{ echo "";}?> id="tt" />


				</div>
			</div>

			<div class="panel panel-primary" data-collapsed="0"> <div class="panel-heading">
					<div class="panel-title">Video Image Thumbnail </div> <div class="panel-options"> <a href="#" data-rel="collapse"><i class="entypo-down-open"></i></a> </div></div>
				<div class="panel-body" style="display: block;">
					@if(!empty($video->bannerImg))
						<img src="/content/uploads/file/<?= $video->bannerImg; ?>" class="video-img" width="200"/>
					@endif
					<p style="color:red;">Select The Image Min-(Width:350px And Height:175px):</p>
					<input type="file" class="form-control" name="bannerImg" id="pp" />

				</div>
			</div>

			<div class="panel panel-primary" data-collapsed="0"> <div class="panel-heading">
					<div class="panel-title">Video Source</div> <div class="panel-options"> <a href="#" data-rel="collapse"><i class="entypo-down-open"></i></a> </div></div>
				<div class="panel-body" style="display: block;">

					<div class="col-md-12">
						<div id="upload123" class="col-md-4">
							<label for="password">Upload on Wistia</label>
							<script src="//fast.wistia.com/assets/external/api.js" async></script>
							<link rel="stylesheet" href="//fast.wistia.com/assets/external/uploader.css" />
							<div id="wistia_upload_button_button_only" alt="Upload Video"></div>
							<script>

							function pad(entity){

								return (entity < 10) ? '0'+entity : entity;
							}
							function secondsFormat(seconds){

								seconds = Math.floor(seconds);

								var hours = 0;
								var minutes = 0;

									3600
								while(Math.floor(seconds / 3600) > 0){
									seconds -= 3600;
									hours++;
								}
								while(Math.floor(seconds / 60) > 0){
									seconds -= 60;
									minutes++;
								}

								return pad(hours) + ':' + pad(minutes) + ':' + pad(seconds);


							}
                                window._wapiq = window._wapiq || [];
                                _wapiq.push(function(W) {
                                    window.wistiaUploader = new W.Uploader({
                                        accessToken: "604c337996df0f0a2da8177db5f65c1f4e72dea6",
                                        button: "wistia_upload_button_button_only",
                                        projectId: "d1377ab7t1",
                                        embedCodeOptions: {
                                            playerColor: "56be8e",
                                            embedType: "iframe"
                                        }
                                    });
                                    wistiaUploader.bind("uploadembeddable", function(file, media, embedCode, oembedResponse) {

                                        // $('.wistia_upload_button wistia_upload_video').css({
																				// 	'background-color' : '#08ec44'
																				// });
																				//
																				// $('.wistia_upload_button_text').text('Success');

																				$('#duration').val(secondsFormat(media.duration));
                                        //var sa = oSelectBox.options[iChoice].text;
                                        document.getElementById("a").value = media.id;
// save the embed code to your database to display the video in the future
                                    });
                                });

							</script>
						</div>
						<div class="col-md-4 col-md-offset-4">
							<input type="radio" id="live" value="live" name="live" class="btn btn-success" <?php if(@$video->live=="live"){ echo "checked"; }?> /> <b style="color: #000;"> For Upload Live Video</b>
							<br><br><input type="radio" id="type1" value="1" name="type1" class="btn btn-success" <?php if(@$video->type1==1){ echo "checked"; }?> /> <b style="color: #000;"> For Upload Embed Code Video</b>

						</div>
						<!-- <div class="col-md-4">
							<label for="password">Upload on Google Cloud</label><br>
							<a href="" data-toggle="modal" data-target="#awsserver">
								<button style="background-color: #f7f6f4;
    border: 1px solid #bbb;
    border-radius: 5px;
    -moz-border-radius: 5px;
    -webkit-border-radius: 5px;
    color: #888;
    cursor: pointer;
    display: inline-block;
    font-family: WistiaPlayerOverpass,Helvetica,Arial;
    font-size: 14px;
    height: 34px;
    line-height: 34px;
    margin: 0;
    overflow: hidden;
    padding: 0;
    position: relative;
    text-align: center;
    vertical-align: top;
    width: 120px;
    zoom: 1;">Upload Video</button>
							</a>
						</div> -->
					</div>
					<div class="new-video-embed" id="embed" @if(!empty($video->type) && $video->type == 'file')style="display:none"@endif>

                        <?php
                        if(@$video->id==null)
						{
						?>
                        <?php
                        if(@$_GET['bucket']==null)
						{
						?>
						<br>
						<label for="password" style="color:red;">Enter Video Media Id </label>
						<br>
						<input type="hidden" id="type" name="type" value="embed" />
						<!--<textarea class="form-control" name="embed_code" id="a" readonly="readonly">@if(!empty($video->embed_code)){{ $video->embed_code }}@endif</textarea>-->
						<textarea class="form-control" name="embed_code" id="a" >@if(!empty($video->embed_code)){{ $video->embed_code }}@endif</textarea>
                        <?php
                        }
                        else
                        {
                        ?>
						<br>
						<label for="password" style="color:red;">Enter Aws Video Link</label>
						<br>


						<input type="hidden" id="type" name="type" value="mp4_url" />
						<textarea class="form-control" name="mp4_url" ><?php echo 'https://storage.googleapis.com/aflix-storage/'.$_GET["key"].'"';?></textarea>
						<br>
						<label for="password" style="color:red;">Upload VTT File (Only For Aws)</label>
						<input type="file" multiple="true"  name="subtitle" class="form-control">
                        <?php
                        }
                        }
                        else
                        {
                        ?>
                        <?php

                        if($video->mp4_url!=null AND @$_GET['bucket']==null)
						{
						?>
						<br>
						<label for="password" style="color:red;">Enter Aws Video Link</label>
						<br>
						<input type="hidden" id="type" name="type" value="mp4_url" />
						<textarea class="form-control" name="mp4_url"><?php echo $video->mp4_url;?></textarea>
						<br>
						<label for="password" style="color:red;">Upload VTT File (Only For Aws)</label>
						<input type="file" multiple="true"  name="subtitle" class="form-control">
                        <?php
                        }
                        ?>

                        <?php

                        if($video->embed_code!=null)
                        {
                        ?>
						<br>
						<label for="password" style="color:red;">Enter Video Media Id </label>
						<br>
						<input type="hidden" id="type" name="type" value="embed" />
						<textarea class="form-control" name="embed_code"><?php echo $video->embed_code;?></textarea>
                        <?php
                        }
                        ?>
                        <?php
                        }
                        ?>
					</div>
				</div>
			</div>

			<script>
				/*$(document).ready(function(){
				 $("#embed").hide();

				 $("#live").click(function(){
				 $("#embed").show();

				 });
				 });*/
			</script>
			<div class="panel panel-primary" data-collapsed="0"> <div class="panel-heading">
					<div class="panel-title">Video Details, Links, and Info</div> <div class="panel-options"> <a href="#" data-rel="collapse"><i class="entypo-down-open"></i></a> </div></div>
				<div class="panel-body" style="display: block; padding:0px;">
					<textarea class="form-control" name="details" id="details">@if(!empty($video->details)){{ htmlspecialchars($video->details) }}@endif</textarea>
				</div>
			</div>

			<div class="panel panel-primary" data-collapsed="0"> <div class="panel-heading">
					<div class="panel-title">Short Description</div> <div class="panel-options"> <a href="#" data-rel="collapse"><i class="entypo-down-open"></i></a> </div></div>
				<div class="panel-body" style="display: block;">
					<p>Add a short description of the video below:</p>
					<textarea class="form-control" name="description" id="description">@if(!empty($video->description)){{ htmlspecialchars($video->description) }}@endif</textarea>
				</div>
			</div>

			<div class="panel panel-primary" data-collapsed="0"> <div class="panel-heading">
					<div class="panel-title">Category</div> <div class="panel-options"> <a href="#" data-rel="collapse"><i class="entypo-down-open"></i></a> </div></div>
				<div class="panel-body" style="display: block;">
					<p>Select a Video Category Below:</p>
					<select id="video_category_id" name="video_category_id">
						<option value="0">Uncategorized</option>
						@foreach($video_categories as $category)
							<option value="{{ $category->id }}" @if(!empty($video->video_category_id) && $video->video_category_id == $category->id)selected="selected"@endif>{{ $category->name }}</option>
						@endforeach
					</select>
				</div>
			</div>

			<div class="panel panel-primary" data-collapsed="0"> <div class="panel-heading">
					<div class="panel-title">Tags</div> <div class="panel-options"> <a href="#" data-rel="collapse"><i class="entypo-down-open"></i></a> </div></div>
				<div class="panel-body" style="display: block;">
					<p>Add video tags below:</p>
					<input class="form-control" name="tags" id="tags" value="@if(!empty($video) && $video->tags->count() > 0)@foreach($video->tags as $tag){{ $tag->name . ', ' }}@endforeach @endif">
				</div>
			</div>

			<div class="panel panel-primary" data-collapsed="0"> <div class="panel-heading">
					<div class="panel-title">Uploaded By</div> <div class="panel-options"> <a href="#" data-rel="collapse"><i class="entypo-down-open"></i></a> </div></div>
				<div class="panel-body" style="display: block;">

					<select id="user_id" name="user_id" required>
					    <?php if($contribute == 'contribute'){ ?>
					    <option value="<?php echo $admin_user->id;;?>"><?php echo $admin_user->username;?></option>
					    <?php }else{ ?>
						<option value="">Select Contributor</option>
						<option value="1">Admin</option>
                        <?php
                        $uploaded = DB::select("select * from users where contribute='contribute'");
                        foreach($uploaded as $upload)
                        {
                        ?>
						<option value="<?php echo $upload->id;?>" <?php if(@$video->user_id==$upload->id){ echo "Selected"; }?>><?php echo $upload->username;?></option>
                        <?php
                        }}
                        ?>
					</select>
				</div>
			</div>

			<div class="clear"></div>


			<div class="row">

				<div class="col-sm-4">
					<div class="panel panel-primary" data-collapsed="0">
						<div class="panel-heading"> <div class="panel-title"> Duration</div> <div class="panel-options"> <a href="#" data-rel="collapse"><i class="entypo-down-open"></i></a> </div></div>
						<div class="panel-body">
							<p>Enter the video duration in the following format (Hours : Minutes : Seconds)</p>
							<input class="form-control" name="duration" id="duration" value="@if(!empty($video->duration)){{ gmdate('H:i:s', $video->duration) }}@endif">
						</div>
					</div>
				</div>

				<div class="col-sm-4">
					<div class="panel panel-primary" data-collapsed="0">
						<div class="panel-heading"> <div class="panel-title"> User Access</div> <div class="panel-options"> <a href="#" data-rel="collapse"><i class="entypo-down-open"></i></a> </div></div>
						<div class="panel-body">
							<label for="access" style="float:left; margin-right:10px;">Who is allowed to view this video?</label>
							<select id="access" name="access" onchange="myFunction()">
								<option value="guest" @if(!empty($video->access) && $video->access == 'guest'){{ 'selected' }}@endif>Guest (everyone)</option>
								<option value="registered" @if(!empty($video->access) && $video->access == 'registered'){{ 'selected' }}@endif>Registered Users (free registration must be enabled)</option>
								<option value="subscriber" @if(!empty($video->access) && $video->access == 'subscriber'){{ 'selected' }}@endif>Subscriber (only paid subscription users)</option>
								<option value="premium" @if(!empty($video->access) && $video->access == 'premium'){{ 'selected' }}@endif>Premium (Premium Video )</option>
							</select>
							<div class="panel-body" id="hello">
								<p>Enter Price </p>
								<input class="form-control" name="price" id="price"  value="@if(!empty($video->price)){{ $video->price }}@endif" >
							</div>
							<div class="panel-body" id="hello1">
								<p>Enter Validity</p>
								<input class="form-control" name="validate1" id="validate1"  value="@if(!empty($video->validate1)){{ $video->validate1 }}@endif">
								<br>

								<p>Enter Video Trailer</p>

								<textarea class="form-control" name="trailor_embed_code"  id="trailor_embed_code">@if(!empty($video->trailor_embed_code)){{ $video->trailor_embed_code }}@endif</textarea>

							</div>
							<div class="panel-body" id="hello2">
								<p>Enter Video Trailer</p>
								<textarea class="form-control" name="trailor_embed_code"  id="trailor_embed_code">@if(!empty($video->trailor_embed_code)){{ $video->trailor_embed_code }}@endif</textarea>

							</div>
							<div class="clear"></div>
						</div>
					</div>
				</div>
				<script type="text/javascript">
                    $(document).ready(function(){

                        $("#hello").hide();
                        $("#hello1").hide();
                        $("#hello2").hide();
                    });
                    function myFunction() {
                        var e = document.getElementById("access");
                        var a = e.options[e.selectedIndex].value;


                        if(a=='premium')
                        {
                            $("#hello").show();
                            $("#hello1").show();
                            $("#hello2").show();

														$('#hello2 .form-control , #hello .form-control ,#hello1 .form-control ')
														   .attr('required' , 'required');
                        }else
                        {
                            $("#hello").hide();
                            $("#hello1").hide();
                            $("#hello2").hide();

														$('#hello2 .form-control , #hello .form-control ,#hello1 .form-control ')
														   .removeAttr('required' , 'required');
                        }
                        if(a=='subscriber')
                        {
                            $("#hello2").show();

														$('#hello2 .form-control')
														   .attr('required' , 'required');

															 $('#hello .form-control ,#hello1 .form-control ')
	 														   .removeAttr('required' , 'required');

                        }else
                        {
                            $("#hello2").hide();
														$('#hello2 .form-control')
															 .removeAttr('required' , 'required');

                        }

                    }

				</script>
				<?php if($contribute != 'contribute'){ ?>
				<div class="col-sm-4">
					<div class="panel panel-primary" data-collapsed="0">
						<div class="panel-heading"> <div class="panel-title"> Status Settings</div> <div class="panel-options"> <a href="#" data-rel="collapse"><i class="entypo-down-open"></i></a> </div></div>
						<div class="panel-body">
							<div>
								<label for="featured" style="float:left; display:block; margin-right:10px;">Is this video Featured:</label>
								<input type="checkbox" @if(!empty($video->featured) && $video->featured == 1){{ 'checked="checked"' }}@endif name="featured" value="1" id="featured" />
							</div>
							<div class="clear"></div>
							<div>
								<label for="active" style="float:left; display:block; margin-right:10px;">Is this video Active:</label>
								<input type="checkbox" @if(!empty($video->active) && $video->active == 1){{ 'checked="checked"' }}@elseif(!isset($video->active)){{ 'checked="checked"' }}@endif name="active" value="1" id="active" />
							</div>
						</div>
					</div>
				</div>
                <?php }else{ ?>
					<input type="hidden" name="" name="active" value="0" id="active">
				<?php } ?>
			</div><!-- row -->

			@if(!isset($video->user_id))
			<!--<input type="hidden" name="user_id" id="user_id" value="{{ Auth::user()->id }}" />-->
			@endif

			@if(isset($video->id))
				<input type="hidden" id="id" name="id" value="{{ $video->id }}" />
			@endif

			<input type="hidden" name="_token" value="<?= csrf_token() ?>" />
			<input type="submit" value="{{ $button_text }}" class="btn btn-success pull-right" />

		</form>

		<div class="clear"></div>
		<!-- This is where now -->
	</div>




@section('javascript')


	<script type="text/javascript" src="{{ '/application/assets/admin/js/tinymce/tinymce.min.js' }}"></script>
	<script type="text/javascript" src="{{ '/application/assets/js/tagsinput/jquery.tagsinput.min.js' }}"></script>
	<script type="text/javascript" src="{{ '/application/assets/js/jquery.mask.min.js' }}"></script>

	<script type="text/javascript">

        $ = jQuery;

        $(document).ready(function(){

            $('#duration').mask('00:00:00');
            $('#tags').tagsInput();

            $('#type').change(function(){
                if($(this).val() == 'file'){
                    $('.new-video-file').show();
                    $('.new-video-embed').hide();
                } else {
                    $('.new-video-file').hide();
                    $('.new-video-embed').show();
                }
            });

            tinymce.init({
                relative_urls: false,
                selector: '#details',
                toolbar: "styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image | preview media | forecolor backcolor | code",
                plugins: [
                    "advlist autolink link image code lists charmap print preview hr anchor pagebreak spellchecker code fullscreen",
                    "save table contextmenu directionality emoticons template paste textcolor code"
                ],
                menubar:false,
            });

        });



	</script>

@stop

@stop
