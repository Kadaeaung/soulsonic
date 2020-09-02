<x-frontend>

	<!-- Hero section -->
	<section class="hero-section">
		<div class="hero-slider owl-carousel">

			@foreach($albums as $album)
			@php
			$id=$album->id;
			$name=$album->name;
			$photo=$album->photo;
			@endphp

			<div class="hs-item">
				<div class="container">
					<div class="row">
						<div class="col-lg-6">
							<div class="hs-text">
								<h2><span>{{$name}}</span> for everyone.</h2>
								<p>You will not be alone</p>
								
							</div>
						</div>
											
						<div class="col-lg-6">
							<div class="hr-img">
								<a href="{{route('albumdetail',$id)}}">
								<img src="{{asset($photo)}}" alt="">
							</a>
							</div>
						</div>

					</div>
				</div>
			</div>
			@endforeach

{{-- 			<div class="hs-item">
				<div class="container">
					<div class="row">
						<div class="col-lg-6">
							<div class="hs-text">
								<h2><span>Listen </span> to new music.</h2>
								<p>Make your Feel well</p>
							</div>
						</div>
						<div class="col-lg-6">
							<div class="hr-img">
								<img src="{{asset('frontend/img/k.png')}}" alt="">
							</div>
						</div>
					</div>
				</div>
			</div> --}}
		</div>
	</section>
	<!-- Hero section end -->


	

	

	<!-- Concept section -->
	<section class="concept-section spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-6">
					<div class="section-title">
						<h2>home pages</h2>
					</div>
				</div>
				
			</div>
			<div class="row">
				<div class="col-lg-3 col-sm-6">
					<div class="concept-item">
						<img src="{{asset('frontend/img/concept/1.jpg')}}" alt="">
						<h5>Soul Music</h5>
					</div>
				</div>

				<div class="col-lg-3 col-sm-6">
					<div class="concept-item">
						<img src="{{asset('frontend/img/concept/2.jpg')}}" alt="">
						<h5>Live Concerts</h5>
					</div>
				</div>
				<div class="col-lg-3 col-sm-6">
					<div class="concept-item">
						<img src="{{asset('frontend/img/concept/3.jpg')}}" alt="">
						<h5>Dj Sets</h5>
					</div>
				</div>
				<div class="col-lg-3 col-sm-6">
					<div class="concept-item">
						<img src="{{asset('frontend/img/concept/4.jpg')}}" alt="">
						<h5>Live Streems</h5>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Concept section end -->

	
	
	<!-- Premium section end -->
</x-frontend>