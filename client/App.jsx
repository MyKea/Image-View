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
            numOfImgs: 6,
            itemName: "",
            numOfVids: 0,
            imageNumber: 1
        }
        this.get.bind(this);
        this.onClick.bind(this);
    }

    get() {
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

    onClick(event) {
        const target = event.target.src;
        const split = target.split('Image-')
        const anotherSplit = split[1].split('.');
        const id = anotherSplit[0];
        this.setState({
            imageNumber: id,
        })
    }

    render() {
        this.get()
        return (
            <div id="Marks-main-container">
                <div id="Marks-side-images">
                <SideImages imgId={this.state.selectedItem} onClick={this.onClick.bind(this)} numOfImgs={this.state.numOfImgs} imageNumber={this.state.imageNumber} />
                </div>
                <div id="Marks-main-image">
                <MainImage imgId={this.state.selectedItem} imgNum={this.state.imageNumber}/>
                </div>
            </div>
        )
    }
}

export default App;