import React from 'react';

function MainImage(props) {
    const image = `https://mark-ikea-image-view.s3.us-east-2.amazonaws.com/${props.imgId}/Image-${props.imgNum}.jpeg`
    return(
        <img onClick={props.onClick} id="main" src={image} />
    );
};

export default MainImage;