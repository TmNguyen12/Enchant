<Route
  exact
  path="/project/:projectId"
  render={() => (
    <div>
      {isModal ? null : <ProjectShowContainer project={projectz} />}
      <Modal
        isOpen={this.state.modalIsOpen}
        closeTimeoutMS={500}
        onAfterOpen={this.afterOpenModal}
        onRequestClose={this.closeModal}
        className={{
          base: "view-modal",
          afterOpen: "view-modal-open",
          beforeClose: "view-modal-close"
        }}
        overlayClassName={{
          base: "view-modal-overlay",
          afterOpen: "view-modal-overlay-open",
          beforeClose: "view-modal-overlay-close"
        }}
      >
        <div className="modal">
          <ProjectShowContainer project={projectz} /> */}
        </div>
      </Modal>
      <Modal onClose={() => this.props.history.push("/")} />;
    </div>
  )}
/>;
