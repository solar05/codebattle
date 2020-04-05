import React from 'react';
import { useSelector } from 'react-redux';
import ChatWidget from './ChatWidget';
import Task from '../components/Task';
import { gameTaskSelector, gameStatusSelector } from '../selectors';

const InfoWidget = () => {
  const taskText = useSelector(state => gameTaskSelector(state));
  const startsAt = useSelector(state => gameStatusSelector(state).startsAt);
  const timeoutSeconds = useSelector(state => gameStatusSelector(state).timeoutSeconds);
  const gameStatusName = useSelector(state => gameStatusSelector(state).status);
  return (
    <div className="row no-gutters cb-info-widget">
      <div className="col-12 col-lg-6 p-1 h-100">
        <Task
          task={taskText}
          time={startsAt}
          timeoutSeconds={timeoutSeconds}
          gameStatusName={gameStatusName}
        />
      </div>
      <div className="col-12 col-lg-6 p-1 h-100">
        <ChatWidget />
      </div>
    </div>
  );
};

export default InfoWidget;
