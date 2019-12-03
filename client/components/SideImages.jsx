import React from 'react';

function SideImages(props) {
    const items = [];
    for (var i = 1; i < props.numOfImgs; i++) {
        var image = `https://mark-ikea-image-view.s3.us-east-2.amazonaws.com/${props.imgId}/Image-${i}.jpeg`;
        items.push(<img onClick={props.onClick} className="side" key={i} src={image} />)
    }
    return <div>{items}</div>
};

export default SideImages;