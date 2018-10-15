import React from "react"
import { connect } from "react-redux"
import { Grid, Panel, ListGroup } from "react-bootstrap"
import PositionForm from "./PositionForm"
import PositionList from "./PositionList"

class Positions extends React.Component {
    render() {
        return (
            <Grid fluid id="courses-grid">
                <PositionList positions={this.props.positions} />
                <Panel id="course-form">
                    <ListGroup>
                        {this.props.positions.map(position => (
                            <PositionForm key={position.id} position={position} />
                        ))}
                    </ListGroup>
                </Panel>
            </Grid>
        )
    }
}

export default connect(({ positions }) => ({ positions }))(Positions)
