import React from 'react'; 

class ItemsUpload extends React.Component {
  constructor(props){
    super(props); 
    this.state = {
      text:"", 
      image: "",
      project_id: this.props.project_id,
      uploadImages: []
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
    const file = e.currentTarget.files[0];
    const fileReader = new FileReader();
    fileReader.onloadend = () => {
      this.setState({ image: fileReader.result}); 
      } ; 

    if (file) {
      fileReader.readAsDataURL(file);
    }
  }

  handleSubmit(e) {
    const formData = new FormData();
    formData.append("item[project_id]", this.state.project_id); 
    formData.append("item[text]", this.state.text);
    formData.append("item[image]", this.state.image || this.state.image_url);
    if (this.state.image) formData.append("item[image]", this.state.image);
    this.props.makeItem(formData).then( ({item}) => {
      const uploadImages = this.state.uploadImages.slice(); 
      uploadImages.push(item.image_url); 
      this.setState({uploadImages}); 
    });
  }

  // goBack() {
  //   this.context.router.push("/");
  // }
  render() {
    console.log(this.state); 
    return(
      <div>
        Upload Project Files 

        <input type="text" onChange={this.updateText}/>
        <input type="file" onChange={this.updateFile}/>
        <button onClick={this.handleSubmit}>Upload file</button>
        {/* <img src={this.state.image.url}/> */}
        <ul className="uploaded-images">
          {
            this.state.uploadImages.map( (imageurl, i) => {
            return (<img src={imageurl} key={i+1}/>);
            })
          }
        </ul>
      </div>);
  }

}

export default ItemsUpload; 