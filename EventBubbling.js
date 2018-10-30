class Example extends React.Component {
    event(e) {
      console.log(e.currentTarget.innerText);
      console.log(e.target.innerText);
    }

    render() {
        return (
            <form onClick={this.event.bind(this)}>
            FORM 
            <div onClick={this.event.bind(this)}>
            DIV 
            <p onClick={this.event.bind(this)}>
            P
            </p>
            </div>
            </form>
        )
    }
  }

//   when p is clicked ,what do you see?
// P > P > DIV(current target bubbles out to div, but target, the one)
// click is still the p you clicked the first time 
// > P > FORM > P



