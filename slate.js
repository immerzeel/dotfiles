slate.config("defaultToCurrentScreen", true);
slate.config("windowHintsShowIcons", true);

var switch = slate.operation("switch");

slate.bind("tab:ctrl:cmd", switch);
