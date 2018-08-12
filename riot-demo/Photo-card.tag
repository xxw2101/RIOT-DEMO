<Photo-card>
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
				url: "http://trupanion.com/blog/wp-content/uploads/2017/09/GettyImages-512536165.jpg",
				title: 'Corgi1'
			},
			{
				url: "https://cdn1.lockerdome.com/uploads/bdd4db418b994ce5d5f9c95404b20a8b345dd2e387f459c0fda7baf046568cd4_large",
				title: 'corgi2'
			},
			{
				url: "https://img.alicdn.com/imgextra/i3/TB1DnOvNVXXXXcJXVXXXXXXXXXX_!!0-item_pic.jpg",
				title: 'corgi3'
			}
		]
	</script>


	<style>
		.photo-wrap {
			display: flex;
			justify-content: space-around;
		}
		.photo-wrap > .photo {
			width: 300px;
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

</Photo-card>
