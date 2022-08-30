import React from 'react';
import { withComponentFeatures } from 'universal-dashboard'
import { GlobalHotKeys } from 'react-hotkeys';

const UDComponent = props => {
  const keyMap = {}
  keyMap[props.id] = props.keys;

  const cb = React.useCallback(() => {
    props.onInvoke();
  }, [props.onInvoke])

  const handlers = {};
  handlers[props.id] = cb;

  return <GlobalHotKeys keyMap={keyMap} handlers={handlers} allowChanges />
}

export default withComponentFeatures(UDComponent)