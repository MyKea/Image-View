import React from 'react';
import axios from 'axios';
import MainImage from './components/mainImage.jsx';
import SideImages from './components/sideImages.jsx';

class App extends
React.Component {
    constructor(props) {
        super(props);
        this.state = {
            selectedItem: 1,
            numOfImgs: 2,
            itemName: "",
            numOfVids: 0,
            imageNumber: 1
        }
        this.getImageData.bind(this);
        this.onClickSide.bind(this);
        this.onClickMain.bind(this);
    }

    componentDidMount() {
        this.getImageData();
    }

    getImageData() {
        axios.get(`/${this.state.selectedItem}`)
        .then( (response) => {
            const data = response.data[0];
            this.setState({
                numOfImgs: data.images,
                itemName: data.name,
                numOfVids: data.videos
            })
        })
        .catch(function (error) {
            console.log(error);
        })
    }

    onClickSide(event) {
        console.log(this);
        const target = event.target.src;
        const split = target.split('Image-')
        const anotherSplit = split[1].split('.');
        const id = anotherSplit[0];
        this.setState({
            imageNumber: id,
        })
        const borderable = document.getElementsByClassName(`side${this.state.imageNumber}`)
        // Add a border to this bitch
    }

    onClickMain() {
        //This should throw up a modal with all images
    }

    render() {
        return (
            <div id="m_main_container">
                <div id="m_side_images">
                <SideImages imgId={this.state.selectedItem} onClick={this.onClickSide.bind(this)} numOfImgs={this.state.numOfImgs} imgNum={this.state.imageNumber} />
                </div>
                <div id="m_main_image">
                <MainImage onClick={this.onClickMain.bind(this)} imgId={this.state.selectedItem} imgNum={this.state.imageNumber}/>
                </div>
            </div>
        )
    }
}

export default App;