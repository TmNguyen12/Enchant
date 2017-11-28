import React from 'react'; 

class ItemsUpload extends React.Component {
  constructor(props){
    super(props); 
    this.state = {
      text:"", 
      image: ""
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
      this.setState({ image: fileReader.result }, () => makeItem(this.state)) ;
    };  

    if (file) {
      fileReader.readAsDataURL(file);
    }
  }

  handleSubmit(e) {
    const formData = new FormData();
    formData.append("item[text]", this.state.text);
    formData.append("item[image]", this.state.imageFile || this.state.image_url);

    if (this.state.imageFile) formData.append("item[image]", this.state.imageFile);
    this.props.makeItem(formData);
  }

  // goBack() {
  //   this.context.router.push("/");
  // }

  render() {
    return(
      <div>
        Upload Project Files 

        <input type="text" onChange={this.updateText}/>
        <input type="file" onChange={this.updateFile}/>
        <button onClick={this.handleSubmit}>Upload file</button>
        <img src={this.state.imageUrl}/>
      </div>);
  }



}

export default ItemsUpload; 