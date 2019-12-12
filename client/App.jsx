import React from 'react';
import axios from 'axios';
import MainImage from './components/MainImage.jsx';
import SideImages from './components/SideImages.jsx';
import BuyItemModal from './components/BuyItemModal.jsx';

class App extends
React.Component {
    constructor(props) {
        super(props);
        this.state = {
            selectedItem: 3,
            previouslySelectedImageNumber: 0,
            numOfImgs: 0,
            itemName: "",
            videoEmbed: null,
            videoThumb: null,
            description: '',
            imageNumber: 1,
            dummy: true
        }
        this.getImageData.bind(this);
        this.onClickSide.bind(this);
        this.onClickMain.bind(this);
        this.setBorder.bind(this);
        this.animate.bind(this);
        this.onClose.bind(this);
        this.onVideoClick.bind(this);
        this.setBorder.bind(this);
        this.onScroll.bind(this);
        this.hideImages.bind(this);
        this.displayImages.bind(this);
    }

    componentDidMount() {
        this.getImageData();
        window.addEventListener('scroll', () => {
            this.onScroll();
        })
        window.addEventListener('productChanged', (event) => {
            this.setState({
              selectedItem: event.detail.productId,
            }, () => {
              this.getImageData();
            });
          });
    }

    onScroll() {
        if (window.scrollY > 700) {
            document.getElementById('m_buyItemModal').style.display = 'flex';
        }
        if (window.scrollY < 699) {
            document.getElementById('m_buyItemModal').style.display = 'none';
        }
    }

    onVideoClick() {
        document.getElementById('video').style.display = 'block';
        const borderable = document.getElementsByClassName('video');
        borderable[0].attributes[0].nodeValue = 'video bordered';
        this.setBorder(10);
        this.hideImages();
    }

    animate() {
        var element = document.getElementById('mainImgGallery');
        element.classList.remove('animate');
        void element.offsetWidth;
        if (document.getElementById('style') !== null || undefined) {
            var sheetToBeRemoved = document.getElementById('styleSheetId');
            var sheetParent = sheetToBeRemoved.parentNode;
            sheetParent.removeChild(sheetToBeRemoved);
        }
        var previous = this.state.previouslySelectedImageNumber;
        var current = this.state.imageNumber;
        var sheet = document.createElement('style')
        sheet.innerHTML = 
            `
            @keyframes gallerymover {
                0% {right: ${(previous * 100) - 100}%;}
                100% {right: ${(current * 100) - 100}%;}
            }
            `;
        document.body.appendChild(sheet);
        element.classList.add('animate');
    }

    setBorder(selected) {
        selected = selected || 1;
        if (this.state.videoThumb !== null && selected !== 10) {
            const borderable = document.getElementsByClassName('video');
            borderable[0].attributes[0].nodeValue = 'side video';
        }
        for (var i = 1; i < this.state.numOfImgs + 1; i++) {
            if (i === selected) {
                const borderable = document.getElementsByClassName(`side${i}`);
                borderable[0].attributes[0].nodeValue = `side${i} bordered`;
            } else {
                const notBorderable = document.getElementsByClassName(`side${i}`);
                notBorderable[0].attributes[0].nodeValue = `side side${i}`;
            }
        }
    }

    displayImages() {
        document.getElementById('mainImgGallery').style.display = 'flex';
    }

    hideImages() {
        document.getElementById('mainImgGallery').style.display = 'none';
    }

    getImageData() {
        axios.get(`/${this.state.selectedItem}`, {baseURL: 'http://markymark-env.dijtmsca46.us-east-2.elasticbeanstalk.com/'})
        .then( (response) => {
            const data = response.data[0];
            this.setState({
                numOfImgs: data.images,
                itemName: data.name,
                videoEmbed: data.videoEmbed,
                videoThumb: data.videoThumb,
                description: data.description
            })
            this.setBorder(1);
            this.displayImages();
        })
        .catch(function (error) {
            console.log(error);
        })
    }

    onClickSide(event) {
        this.displayImages();
        if (this.state.videoThumb !== null) {
            document.getElementById('video').style.display = 'none';
        }
        const id = parseInt(event.target.src.split('Image-')[1].split('.')[0]);
        this.setBorder(id);
        var newPrev = 0;
        if (this.state.imageNumber !== id) {
            newPrev = this.state.imageNumber
        } else {
            newPrev = this.state.previouslySelectedImageNumber
        }
        this.setState({
            imageNumber: id,
            previouslySelectedImageNumber: newPrev,
        }, () => this.animate())
    }

    onClickMain() {
        var modal = document.getElementById("myModal");
        modal.style.display = 'flex';
        document.documentElement.style.overflow = 'hidden';
    }

    onClose() {
        var modal = document.getElementById("myModal");
        modal.style.display = 'none';
        document.documentElement.style.overflow = 'auto';
    }

    onClickArrow(event) {
        this.displayImages();
        var currentImage = this.state.imageNumber;
        if (event.target.className.baseVal === "left") {
            if (this.state.imageNumber > 1) {
                this.setBorder(currentImage - 1);
                this.setState({
                    imageNumber: currentImage - 1,
                    previouslySelectedImageNumber: currentImage
                }, () => this.animate())
            } else {
                this.setBorder(this.state.numOfImgs);
                this.setState({
                    imageNumber: this.state.numOfImgs,
                    previouslySelectedImageNumber: 1
                }, () => this.animate())
            }
        } else if (event.target.className.baseVal === "right") {
            if (this.state.imageNumber === this.state.numOfImgs) {
                this.setBorder(1);
                this.setState({
                    imageNumber: 1,
                    previouslySelectedImageNumber: currentImage
                }, () => this.animate())
            } else {
                this.setBorder(currentImage + 1);
                this.setState({
                    imageNumber: currentImage + 1,
                    previouslySelectedImageNumber: currentImage
                }, () => this.animate())
            }
        }
    }

    render() {
        return (
            <div className='m_root'>
                <div id="m_main_container">
                    <div id="m_side_images">
                        <SideImages videoThumb={this.state.videoThumb} onVideoClick={this.onVideoClick.bind(this)} selectedItemId={this.state.selectedItem} onClick={this.onClickSide.bind(this)} numOfImgs={this.state.numOfImgs} imgNum={this.state.imageNumber} />
                    </div>
                    <div id="m_main_image">
                        <MainImage videoEmbed={this.state.videoEmbed} onClose={this.onClose.bind(this)} previousImage={this.state.previouslySelectedImageNumber} numOfImgs={this.state.numOfImgs} onScroll={this.onClickArrow.bind(this)} onClick={this.onClickMain.bind(this)} selectedItemId={this.state.selectedItem} imgNum={this.state.imageNumber}/>
                    </div>
                </div>
                <div id='m_buyItemModal'>
                    <BuyItemModal itemName={this.state.itemName} selectedItemId={this.state.selectedItem}></BuyItemModal>
                </div>
            </div>
        )
    }
}

export default App;