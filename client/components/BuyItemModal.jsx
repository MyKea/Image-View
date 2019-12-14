import React from 'react';
import Modal from './Modal.jsx';

function BuyItemModal(props) {
    return (
        <div id="m_buyItemModalInnerDiv">
            <span id="m_LeftSpan">
                <img id="m_buyItemModalThumbnail" src={`https://mark-ikea-image-view.s3.us-east-2.amazonaws.com/${props.selectedItemId}/Image-1.jpeg`} ></img>
                <div id="m_ModalProductName">
                    <div id="modalItemName">{props.itemName}</div>
                    <div id="showPrice">Show price</div>
                </div>
            </span>
            <span id='m_RightSpan'>
                <span id="m_modalSvgLeft">
                    <svg id="m_wishList">
                        <path d='M18,18h2v2H18v2H16V20H14V18h2V16h2ZM12,6H6V8h6ZM6,12H8V10H6ZM4,4H14l2-2H2V22H12V20H4ZM5.77,18.29l4.66-2.05L22,4.66,19.34,2,7.72,13.73Z'></path>
                    </svg>
                </span>
                <span id="m_modalSvgRight">
                    <svg id="m_shoppingCart">
                        <path d="M20 15h2v2h-2v2h-2v-2h-2v-2h2v-2h2zm-6 2H6.441l-1.666-6h16.558L22 9h-5.323l-1.245-3.114L12.646 4h-1.292L8.569 5.886 7.322 9H2l2.544 8.633A2 2 0 0 0 6.441 19H14zM10.677 6h2.646l1.2 3H9.477z"></path>
                    </svg>
                </span>
            </span>
        </div>
    )
};

export default BuyItemModal;