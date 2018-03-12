import React from "react";

class ItemsUpload extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      text: "",
      image: "",
      project_id: this.props.project_id,
      uploadImages: [],
      imageFile: ""
    };
    this.handleSubmit = this.handleSubmit.bind(this);
    this.updateFile = this.updateFile.bind(this);
    this.updateText = this.updateText.bind(this);
  }

  updateText(e) {
    this.setState({
      text: e.target.value
    });
  }

  updateFile(e) {
    debugger;
    const file = e.currentTarget.files[0];
    const reader = new FileReader();
    reader.onloadend = () => {
      this.setState({ imageURL: reader.result, imageFile: file });
    };
    console.log(reader.result);
    if (file) {
      reader.readAsDataURL(file);
    }
  }

  handleSubmit(e) {
    const file = this.state.imageFile;
    var formData = new FormData();

    formData.append("item[project_id]", this.state.project_id);
    formData.append("item[text]", this.state.text);
    formData.append("item[image]", file || this.state.image_url);
    // if (this.state.image) formData.append("item[image]", this.state.image);
    this.props.makeItem(formData).then(({ item }) => {
      const uploadImages = this.state.uploadImages.slice();
      debugger;
      uploadImages.push(item.image_url);
      this.setState({ uploadImages });
    });
  }
  // TODO this doesn't save the file you are uploading to the project

  // goBack() {
  //   this.context.router.push("/");
  // }
  render() {
    return (
      <div className="upload-wrapper">
        <div className="upload-controls">
          <p>Upload Project File(s)</p>
          <input
            type="text"
            onChange={this.updateText}
            className="project-input"
            placeholder="Photo Title"
          />
          <input type="file" onChange={this.updateFile} />
          <button onClick={this.handleSubmit}>Upload file</button>
        </div>

        <div className="upload-preview">
          <ul className="uploaded-images">
            {this.state.uploadImages.map((imageurl, i) => {
              return <img src={imageurl} key={i + 1} />;
            })}
          </ul>
        </div>
      </div>
    );
  }
}

export default ItemsUpload;
