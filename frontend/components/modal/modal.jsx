import React from 'react';
import Modal from 'react-modal';
import { withRouter } from 'react-router-dom';
import ProjectShowContainer from '../project/project_show_container';

class ModalWrapper extends React.Component {
  // modal code from Dan Abramov portal examples
  constructor(props) {
    super(props);

    //normal modal
    this.state = { modalIsOpen: true };
    this.openModal = this.openModal.bind(this);
    this.afterOpenModal = this.afterOpenModal.bind(this);
    this.closeModal = this.closeModal.bind(this);
  }

  // default modal syntax from https://github.com/reactjs/react-modal
  openModal() {
    this.setState({ modalIsOpen: true });
  }

  afterOpenModal() {
    // references are now sync'd and can be accessed.
    // this.subtitle.style.color = '#f00';
  }

  closeModal() {
    this.setState({ modalIsOpen: false });

    // this.props.history.push("/");
    this.props.history.goBack();
  }

  render() {
    return (
      <div className="modalz">
        <Modal
          isOpen={this.state.modalIsOpen}
          closeTimeoutMS={500}
          onAfterOpen={this.afterOpenModal}
          onRequestClose={this.closeModal}
          className={{
            base: 'view-modal',
            afterOpen: 'view-modal-open',
            beforeClose: 'view-modal-close'
          }}
          overlayClassName={{
            base: 'view-modal-overlay',
            afterOpen: 'view-modal-overlay-open',
            beforeClose: 'view-modal-overlay-close'
          }}
        >
          <div className="modal">
            <ProjectShowContainer project={this.props.project} />
          </div>
        </Modal>
      </div>
    );
  }
}

export default withRouter(ModalWrapper);
