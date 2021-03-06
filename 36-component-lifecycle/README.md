# React: Component Lifecycle

## Learning Goals

* Define mounting, updating, and unmounting in regards to React components
* List component lifecycle methods
* Describe why we might implement a lifecycle method in a component
* Use `fetch` to persist data using react


### Example: ActiveRecord Lifecycle Methods

```
    Validation			          Create
	   \/						            \/

|———--|——————|———-----———|———--|--———|>
/\ 		       /\		       /\		      /\
before		  after	       before	    after
validation	validation	 create	    create
```

## React Component Lifecycle Methods
http://projects.wojtekmaj.pl/react-lifecycle-methods-diagram/


## User stories

* ~~As a user, I can NOT create channels unless I am "logged in"~~
* ~~As a user, I can NOT create messages unless I am "logged in"~~
* ~~As a user, I can load my current_user from my server when my app loads~~
* ~~As a user, I can load my channels from my server when my app loads~~
* ~~As a user, I can save channels I create~~
* ~~As a user, I can save messages I post to a channel~~























## More Reading on Lifecycle Methods
### Most Commonly Used Methods
- *constructor(props)*
- *render()*
- *componentDidMount()*
- *componentDidUpdate(prevProps, prevState, snapshot)*
- *componentWillUnmount()*

### Birth (Mounting)
- *constructor(props)*
  - called before it is mounted
  - set initial state here
- static getDerivedStateFromProps(props, state)
  - invoked right before calling the render method, both on the initial mount and on subsequent updates. It should return an object to update the state, or null to update nothing.
- *render()*
  - called after mounting and updating
- *componentDidMount()*
  - invoked immediately after a component is mounted (inserted into the tree).
  - this is where you should request data from remote endpoints

### Life (Updating)
- static getDerivedStateFromProps(props, state)
  - invoked right before calling the render method, both on the initial mount and on subsequent updates. It should return an object to update the state, or null to update nothing.
- shouldComponentUpdate(nextProps, nextState)
  - invoked before rendering when new props or state are being received
  - returns boolean which determines if render should be called
- *render()*
  - called after mounting and updating
- getSnapshotBeforeUpdate(prevProps, prevState)
  - invoked right before the most recently rendered output is committed to e.g. the DOM. It enables your component to capture some information from the DOM (e.g. scroll position) before it is potentially changed. Any value returned by this lifecycle will be passed as a parameter to componentDidUpdate()
- *componentDidUpdate(prevProps, prevState)*
  - invoked immediately after updating occurs. This method is not called for the initial render
  - watch out for infinite loops if setting state!

### Death (Unmounting)
- *componentWillUnmount()*
  -  invoked immediately before a component is unmounted and destroyed. Perform any necessary cleanup in this method, such as invalidating timers, canceling network requests, or cleaning up any subscriptions that were created in componentDidMount().
