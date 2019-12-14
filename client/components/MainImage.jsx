import React from 'react';
import Modal from './Modal.jsx';

function MainImage(props) {
    const images = [];
    var leftSvg;
    var rightSvg;
    if (props.videoEmbed !== null) {
        var video = [<iframe id='video' key='videoPlayer' playsInline src={props.videoEmbed}></iframe>];
    } else {
        var video = [<div key='emptyVid'></div>];
        leftSvg = <svg onClick={props.onScroll} id="leftSvg" className="left" ><path className="left" d="M11.7,18.22,6.43,13H20V11H6.4l5.31-5.37L10.29,4.22,2.59,12l7.71,7.64Z"></path></svg>
        rightSvg = <svg onClick={props.onScroll} id="rightSvg" className="right" ><path className="right" d="M12.29,18.37l1.42,1.4L21.41,12,13.7,4.36,12.3,5.78,17.57,11H4v2H17.6Z"></path></svg>
    }
    for (var i = 1; i < props.numOfImgs + 1; i++) {
        var image = `https://mark-ikea-image-view.s3.us-east-2.amazonaws.com/${props.selectedItemId}/Image-${i}.jpeg`;
        images.push(<img onClick={props.onClick} className='mainImages' key={i} src={image} />);
    };
    const imageNum = props.imgNum;
    const width = {
        width: imageNum*100 + ' %'
    };
            return(
                <div id="mainImgContainer">
                    {leftSvg}
                        {video}
                    <div id='mainImgsViewer'>
                        <Modal onClose={props.onClose} selectedItemId={props.selectedItemId} numOfImgs={props.numOfImgs} />
                        <div id='mainImgGallery' style={width}>
                            {images}
                        </div>
                    </div>
                    {rightSvg}
                </div>
            );
};

export default MainImage;