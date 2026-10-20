package main.system.coroutine;

@:keep
@:chunk("main")
@:hashAbi("E5918BECABEC63037")
@:expose("E5918BECABEC63037")
enum InternalState
{
    Suspended;
    Running;
    Finished;
    Unknown;
}
