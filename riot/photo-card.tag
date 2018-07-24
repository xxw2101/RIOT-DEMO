<photo-card>

	<p>Hello From the Photo-card tag</p>
	<div class="photo-wrap">
		<div class='photo' each = {i in photos}>
			<img src={i.url} alt="">
			<h2>{i.title}</h2>
		</div>
	</div>



	<script>
		this.photos = [
			{
				url: "https://timedotcom.files.wordpress.com/2017/02/world-press-photo-078_ami-vitale_national-geographic-magazine.jpg?quality=85",
				title: 'photo1'
			},
			{
				url: "https://cdn.theatlantic.com/assets/media/img/photo/2016/02/smithsonian-magazines-2015-photo-co/s01_GeertWeggen/main_900.jpg?1456418926",
				title: 'photo2'
			},
			{
				url: "https://steemitimages.com/DQmYQAN4znr5z8b8hNgqHDp23VKqtdMEyRTkhZPc3stfkpu/img_67920257%20(1).jpg",
				title: 'photo3'
			}
		]
	</script>


	<style>

		.photo-wrap {
			display: flex;
			justify-content: space-around;
		}
		.photo-wrap > .photo {
			width: 350px;
			box-shadow: 1px 2px 7px 0 rgba(0, 0, 0, 0.3);
		}

		.photo-wrap > .photo > img {
			width: 100%;
			height: auto;
		}

		p, .photo-wrap > .photo > h2 {
			text-align: center;
		}
	</style>

</photo-card>
