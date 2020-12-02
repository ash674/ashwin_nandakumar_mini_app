export default {
    name: "moreContent",

    props: ["content"],

    // data needs to be a function inside a component
    data: function() {
        return {
            myName: this.mini.name,
            myRole: this.mini.model,
            program: "IDP"
        }
    },

    template: 
    `<p>Model: {{ currentMiniData.model }}</p>
    <p>Description: {{ currentMiniData.description }}</p>`,
    
  
}
