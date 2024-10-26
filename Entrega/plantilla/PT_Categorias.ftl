<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<!-- Link Swiper's CSS -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />

<style>
	.container {
	  padding: 20px;
	  max-width: 80%;
	}

	.divider {
	  display: flex;
	  align-items: center;
	  justify-content: center;
	  gap: 10px;
	  width: 100%;
	  max-width: 300px;
	  margin: 10px 0px;
	}

	.line {
	  height: 1px;
	  flex-grow: 1;
	  background-color: #4ecca4;
	}

	.leaf {
	  display: flex;
	  align-items: center;
	  justify-content: center;
	}

	.topContainer {
	  display: flex;
	  flex-direction: column;
	  align-items: flex-start;
	  padding: 20px;
	}

	.topTitle {
	  font-size: 22px;
	  color: #222;
	  font-weight: bold;
	}
	@media (min-width: 768px) and (max-width: 1024px) {
	  .topTitle {
	    font-size: 23px;
	  }
	}
	@media (min-width: 1024px) and (max-width: 1960px) {
	  .topTitle {
	    font-size: 23px;
	  }
	}

	.topSubtitle {
	  font-size: 14px;
	  color: #4a5568;
	  font-weight: normal;
	}

	.swiper {
	  width: 100%;
	  height: auto;
	}

	.swiper-slide {
	  text-align: center;
	  font-size: 18px;
	  background: #FFF;
	  display: flex;
	  flex-direction: column;
	  justify-content: center;
	  align-items: center;
	}

	.catCard {
	  width: 46px !important;
	  height: 100px !important;
	  background-color: #f8f8f8;
	}
	@media (min-width: 768px) and (max-width: 1024px) {
	  .catCard {
	    width: 76px !important;
	    height: 111px !important;
	  }
	}
	@media (min-width: 1024px) and (max-width: 1960px) {
	  .catCard {
	    width: 190px !important;
	    height: 150px !important;
	  }
	}

	.catLogoBox {
	  height: 70%;
	  display: flex;
	}
	@media (min-width: 1024px) and (max-width: 1960px) {
	  .catLogoBox {
	    height: 50%;
	    align-items: flex-end;
	  }
	}

	.catLogo {
	  margin: 5px;
	  color: #222;
	}
	@media (min-width: 768px) and (max-width: 1024px) {
	  .catLogo {
	    max-width: 50%;
	    max-height: 50%;
	  }
	}
	@media (min-width: 1024px) and (max-width: 1960px) {
	  .catLogo {
	    max-width: 30%;
	    max-height: 30%;
	  }
	}

	.catTitleBox {
	  height: 30%;
	}
	@media (max-width: 767px) {
	  .catTitleBox {
	    text-overflow: ellipsis;
	    overflow: hidden;
	    white-space: nowrap;
	  }
	}
	@media (min-width: 768px) and (max-width: 1024px) {
	  .catTitleBox {
	    text-overflow: ellipsis;
	    overflow: hidden;
	    white-space: nowrap;
	  }
	}
	@media (min-width: 1024px) and (max-width: 1960px) {
	  .catTitleBox {
	    height: 50%;
	  }
	}

	.catTitle {
	  font-size: 16px;
	}
	@media (max-width: 767px) {
	  .catTitle {
	    font-size: 15px;
	  }
	}

	@media (min-width: 1024px) and (max-width: 1960px) {
	  .catCard:hover {
	    background-color: #0da487;
	    background-image: url("/documents/d/guest/fondo");
	    background-repeat: space;
	  }
	  .catCard:hover .catLogo {
	    filter: invert(1);
	  }
	  .catCard:hover .catTitle {
	    color: #FFF;
	  }
	}/*# sourceMappingURL=style.css.map */
</style>

<div class="container">
	<div class="row topContainer">
        <h2 class="topTitle">Browse By Categories</h2>
        <div class="divider">
		    <div class="line"></div>
		    <div class="leaf">
		        <svg viewBox="0 0 24 24" width="24" height="24" fill="#4ecca4">
		            <path d="M12 2L8 6.5C4 11 4 18 4 18C4 18 11 18 15.5 14L20 10L12 2ZM12 2L16 6.5C20 11 20 18 20 18C20 18 13 18 8.5 14L4 10L12 2Z"/>
		        </svg>
		    </div>
	    <div class="line"></div>
		</div>
        <div class="line"></div>
        <p class="topSubtitle">Top Categories Of The Week</p>
    </div>
    <div class="row">
    	<!-- carrusel -->
        <div class="swiper mySwiper">
            <div class="swiper-wrapper">
                <#if categoria.getSiblings()?has_content>
					<#list categoria.getSiblings() as cur_categoria>
						<div class="swiper-slide catCard">
							<div class="catLogoBox">
								<#if (cur_categoria.logoCategoria.getData())?? && cur_categoria.logoCategoria.getData() != "">
									<img class="catLogo" alt="${cur_categoria.logoCategoria.getAttribute("alt")}" data-fileentryid="${cur_categoria.logoCategoria.getAttribute("fileEntryId")}" src="${cur_categoria.logoCategoria.getData()}" />
								</#if>
							</div>
							<div class="catTitleBox">
								<#if (cur_categoria.tituloCategoria.getData())??>
									<p class="catTitle">${cur_categoria.tituloCategoria.getData()}</p>
								</#if>
							</div>
						</div>
					</#list>
				</#if>
            </div>
        </div>
    </div>
</div>

<!-- Inicio Scripts -->
<!-- Script Swiper Js -->
<script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
<script>
    var swiper = new Swiper(".mySwiper", {
      slidesPerView: 8,
      spaceBetween: 5,
      loop: true,
      pagination: {
        el: ".swiper-pagination",
        clickable: true,
      },/*
      autoplay: {
        delay: 2500,
        disableOnInteraction: false,
      },*/
    });
  </script>
<!-- Fin Scripts -->