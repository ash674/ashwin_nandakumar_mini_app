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
    `<h2>Model: {{ currentMiniData.name }}</h2>
    <p>Description: {{ currentMiniData.description }}</p>`,
    
    created: function () {
        console.log(`created ${this.mini.name}'s card`);
    },

    methods: {
        logClicked() {
            console.log(`fired from inside ${this.mini.name}'s component!`);


        }
    }
}
