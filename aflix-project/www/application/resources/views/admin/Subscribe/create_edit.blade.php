@extends('admin.master')

@section('css')
	<link rel="stylesheet" href="{{ '/application/assets/js/tagsinput/jquery.tagsinput.css' }}" />
@stop


@section('content')

<div id="admin-container">
<!-- This is where -->
	
	<ol class="breadcrumb"> <li> <a href="#"><i class="fa fa-newspaper-o"></i>All Subscription Plan</a> </li> <li class="active">@if(!empty($post->id)) <strong>{{ $post->title }}</strong> @else <strong>New  Subscription Plan</strong> @endif</li> </ol>

	<div class="admin-section-title">
	@if(!empty($post->id))
		<h3>{{ $post->title }}</h3> 
		<!--<a href="{{ URL::to('post') . '/' . $post->slug }}" target="_blank" class="btn btn-info">
			<i class="fa fa-eye"></i> Preview <i class="fa fa-external-link"></i>
		</a>-->
	@else
		<h3><i class="entypo-plus"></i> Add New Subscription Plan</h3> 
	@endif
	</div>
	<div class="clear"></div>

		<form method="POST" action="{{ $post_route }}" accept-charset="UTF-8" file="1" enctype="multipart/form-data">

			<div class="row">
				
				<div class="@if(!empty($post->created_at)) col-sm-6 @else col-sm-6 @endif"> 

					<div class="panel panel-primary" data-collapsed="0"> <div class="panel-heading"> 
						<div class="panel-title">Title</div> <div class="panel-options"> <a href="#" data-rel="collapse"><i class="entypo-down-open"></i></a> </div></div> 
						<div class="panel-body" style="display: block;"> 
							<p>Add the post title in the textbox below:</p> 
							<input type="text" class="form-control" name="title" id="title" required value="@if(!empty($post->title)){{ $post->title }}@endif" />
						</div> 
					</div>

				</div>

				<div class="@if(!empty($post->created_at)) col-sm-3 @else col-sm-3 @endif">
					<div class="panel panel-primary" data-collapsed="0"> <div class="panel-heading"> 
						<div class="panel-title">Amount</div> <div class="panel-options"> <a href="#" data-rel="collapse"><i class="entypo-down-open"></i></a> </div></div> 
						<div class="panel-body" style="display: block;"> 
							<p>Add the Amount in the textbox below:</p> 
							<input type="text" class="form-control" name="amount" id="amount" required value="@if(!empty($post->amount)){{ $post->amount }}@endif" />
						</div> 
					</div>
				</div>

				
					<div class="col-sm-3">
						<div class="panel panel-primary" data-collapsed="0"> <div class="panel-heading"> 
							<div class="panel-title">Validity</div> <div class="panel-options"> <a href="#" data-rel="collapse"><i class="entypo-down-open"></i></a> </div></div> 
							<div class="panel-body" style="display: block;"> 
								<p>Add the Validity in the textbox below:</p> 
								<input type="text" class="form-control" name="validity" required id="validity" placeholder="" value="@if(!empty($post->validity)){{ $post->validity }}@endif" />
							</div> 
						</div>
					</div>
				

			</div>


			<!--<div class="panel panel-primary" data-collapsed="0"> <div class="panel-heading"> 
				<div class="panel-title">Post Content</div> <div class="panel-options"> <a href="#" data-rel="collapse"><i class="entypo-down-open"></i></a> </div></div> 
				<div class="panel-body" style="display: block; padding:0px;">
					<textarea class="form-control" name="body" id="body">@if(!empty($post->body)){{ htmlspecialchars($post->body) }}@endif</textarea>
				</div> 
			</div>--

			
			<div class="panel panel-primary" id="body_guest_block" style="@if(empty($post->access) || $post->access == 'guest')display:none;@endif" data-collapsed="0"> <div class="panel-heading"> 
				<div class="panel-title">Content to be shown to non-subscriber (if any)</div> <div class="panel-options"> <a href="#" data-rel="collapse"><i class="entypo-down-open"></i></a> </div></div> 
				<div class="panel-body" style="display: block; padding:0px;">
					<textarea class="form-control" name="body_guest" id="body_guest">@if(!empty($post->body_guest)){{ htmlspecialchars($post->body_guest) }}@endif</textarea>
				</div> 
			</div>-->

			<div class="clear"></div>


			<div class="row"> 

				<!--<div class="col-sm-4">
					<div class="panel panel-primary" data-collapsed="0"> <div class="panel-heading"> 
						<div class="panel-title">Post Image</div> <div class="panel-options"> <a href="#" data-rel="collapse"><i class="entypo-down-open"></i></a> </div></div> 
						<div class="panel-body" style="display: block;"> 
							@if(!empty($post->image))
								<img src="{{ Config::get('site.uploads_dir') . 'images/' . $post->image }}" class="post-img" width="200"/>
							@endif
							<p>Select the post image (1280x720 for best results):</p> 
							<input type="file" multiple="true" class="form-control" name="image" id="image" />
							
						</div> 
					</div>
				</div>--

				<div class="col-sm-4"> 
					<div class="panel panel-primary" data-collapsed="0"> <div class="panel-heading"> 
						<div class="panel-title">Category</div> <div class="panel-options"> <a href="#" data-rel="collapse"><i class="entypo-down-open"></i></a> </div></div> 
						<div class="panel-body" style="display: block;"> 
							<p>Select a Post Category Below:</p>
							<select id="post_category_id" name="post_category_id">
								<option value="0">Uncategorized</option>
								@foreach($post_categories as $category)
									<option value="{{ $category->id }}" @if(!empty($post->post_category_id) && $post->post_category_id == $category->id)selected="selected"@endif>{{ $category->name }}</option>
								@endforeach
							</select>
						</div> 
					</div>
				</div>--

				<div class="col-sm-4"> 
					<div class="panel panel-primary" data-collapsed="0"> 
						<div class="panel-heading"> <div class="panel-title"> Status & Access Settings</div> <div class="panel-options"> <a href="#" data-rel="collapse"><i class="entypo-down-open"></i></a> </div></div> 
						<div class="panel-body"> 
							<div>
								<label for="active" style="float:left; display:block; margin-right:10px;">Is this post Active:</label>
								<input type="checkbox" @if(!isset($post->active) || (isset($post->active) && $post->active))checked="checked" value="1"@else value="0"@endif name="active" id="active" />
								<p class="clear"></p>
								<label for="access" style="float:left; margin-right:10px;">Who is allowed to view this post?</label>
								<select id="access" name="access">
									<option value="guest" @if(!empty($post->access) && $post->access == 'guest'){{ 'selected' }}@endif>Guest (everyone)</option>
									<option value="registered" @if(!empty($post->access) && $post->access == 'registered'){{ 'selected' }}@endif>Registered Users (free registration must be enabled)</option>
									<option value="subscriber" @if(!empty($post->access) && $post->access == 'subscriber'){{ 'selected' }}@endif>Subscriber (only paid subscription users)</option>
								</select>
							</div>
						</div> 
					</div>
				</div>-->

			</div><!-- row -->

			@if(!isset($post->user_id))
				<input type="hidden" name="user_id" id="user_id" value="{{ Auth::user()->id }}" />
			@endif

			@if(isset($post->id))
				<input type="hidden" id="id" name="id" value="{{ $post->id }}" />
			@endif

			<input type="hidden" name="_token" value="<?= csrf_token() ?>" />
			<input type="submit" value="{{ $button_text }}" class="btn btn-success pull-right" />

		</form>

		<div class="clear"></div>
<!-- This is where now -->
</div>

	
	
	
	@section('javascript')


	<script type="text/javascript" src="{{ '/application/assets/admin/js/tinymce/tinymce.min.js' }}"></script>
	<script type="text/javascript" src="{{ '/application/assets/js/jquery.mask.min.js' }}"></script>

	<script type="text/javascript">

	$ = jQuery;

	$(document).ready(function(){

		$('#duration').mask('00:00:00');

		$('input[type="checkbox"]').change(function() {
			if($(this).is(":checked")) {
		    	$(this).val(1);
		    } else {
		    	$(this).val(0);
		    }
		    console.log('test ' + $(this).is( ':checked' ));
		});

		$('#access').change(function() {
			if($(this).val() == 'guest'){
				$('#body_guest_block').slideUp();
			} else {
				$('#body_guest_block').slideDown();
			}
		});

		tinymce.init({
			relative_urls: false,
		    selector: '#body, #body_guest',
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
