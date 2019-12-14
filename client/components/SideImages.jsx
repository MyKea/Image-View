import React from 'react';

function SideImages(props) {
    const items = [];
    for (var i = 1; i < props.numOfImgs + 1; i++) {
        if (i === 2 && props.videoThumb !== null) {
            var vidKey = `video${i}`;
            var btnKey = `playBtn${i}`;
            var spanKey = `span${i}`;
            items.push(
                <span key={spanKey} className='videoThumbContainer'>
                    <img key={vidKey} className='side video' src={props.videoThumb} onClick={props.onVideoClick} />
                    <img key={btnKey} onClick={props.onVideoClick} className='play' src='https://mmapi.ikea.com/player/ikea/img-btn/play_60px_2x.png' ></img>
                </span>
                );
        }
        const cName = `side side${i}`;
        var image = `https://mark-ikea-image-view.s3.us-east-2.amazonaws.com/${props.selectedItemId}/Image-${i}.jpeg`;
        items.push(<img onClick={props.onClick} className={cName} key={i} src={image} />)
    }
    return <div id="sideImagesContainer">{items}</div>
};

export default SideImages;

