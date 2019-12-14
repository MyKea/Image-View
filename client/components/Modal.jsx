import React from 'react';

function Modal(props) {
    const images = [];
    for (var i = 1; i < props.numOfImgs + 1; i++) {
        var image = `https://mark-ikea-image-view.s3.us-east-2.amazonaws.com/${props.selectedItemId}/Image-${i}.jpeg`;
        images.push(<img className="modal_images" key={i} src={image} />);
    };
    return(
        <div id="myModal" className="modal">
            <div className="modal-content">
                <img src='https://image.flaticon.com/icons/svg/59/59836.svg' onClick={props.onClose} className="close" />
                <p>{images}</p>
            </div>
        </div>
    )
};

export default Modal;