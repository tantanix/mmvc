package mmvc.api;

import msignal.Signal;
import mmvc.api.ICommand;

typedef CommandClass = Class<ICommand>;
typedef SignalClass = Class<AnySignal>;

interface ICommandMap
{
    function mapSignal(signal:AnySignal, commandClass:CommandClass, oneShot:Bool=false):Void;

    function mapSignalClass(signalClass:SignalClass, commandClass:CommandClass, oneShot:Bool=false):AnySignal;

    function hasSignalCommand(signal:AnySignal, commandClass:CommandClass):Bool;

    function unmapSignal(signal:AnySignal, commandClass:CommandClass):Void;
	
    function unmapSignalClass(signalClass:SignalClass, commandClass:CommandClass):Void;

    function detain(command:ICommand):Void;

    function release(command:ICommand):Void;
}