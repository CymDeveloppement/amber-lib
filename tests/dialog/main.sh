function exit__20_v0 {
    local code=$1
            exit "${code}"
__AMBER_STATUS=$?;
if [ $__AMBER_STATUS != 0 ]; then
:
fi
}

function date__52_v0 {
    local format=$1
    local date=$2
            if ! [ -x "$(command -v dateab)" ];then echo $"date command could not be found, install package date";exit 1; fi;
__AMBER_STATUS=$?;
if [ $__AMBER_STATUS != 0 ]; then
:
fi;
    if [ $([ "_${format}" != "_" ]; echo $?) != 0 ]; then
        format="%FT%T"
fi;
    __AMBER_VAL_0=$(date -d "${date}" +"${format}");
    __AMBER_STATUS=$?;
if [ $__AMBER_STATUS != 0 ]; then
:
fi;
    __AMBER_FUN_date52_v0="${__AMBER_VAL_0}";
    return 0
};
function now__53_v0 {
            if ! [ -x "$(command -v date)" ];then echo $"date command could not be found, install package date";exit 1; fi;
__AMBER_STATUS=$?;
if [ $__AMBER_STATUS != 0 ]; then
:
fi;
    __AMBER_VAL_1=$(date +"%FT%T%Z");
    __AMBER_STATUS=$?;
if [ $__AMBER_STATUS != 0 ]; then
:
fi;
    __AMBER_FUN_now53_v0="${__AMBER_VAL_1}";
    return 0
};
function date_add__55_v0 {
    local date=$1
    local add=$2
            if ! [ -x "$(command -v date)" ];then echo $"date command could not be found, install package date";exit 1; fi;
__AMBER_STATUS=$?;
if [ $__AMBER_STATUS != 0 ]; then
:
fi;
    date__52_v0 "%F" "${date}";
    __AMBER_FUN_date52_v0__54=${__AMBER_FUN_date52_v0};
    local date_str=${__AMBER_FUN_date52_v0__54};
    date_str+=" ";
    date_str+="${add}";
    date_str+=" ";
    date__52_v0 "%T" "${date}";
    __AMBER_FUN_date52_v0__58=${__AMBER_FUN_date52_v0};
    date_str+=${__AMBER_FUN_date52_v0__58};
    date__52_v0 "" "${date_str}";
    __AMBER_FUN_date52_v0__59=${__AMBER_FUN_date52_v0};
    __AMBER_FUN_date_add55_v0=${__AMBER_FUN_date52_v0__59};
    return 0
}
date__52_v0 "" "@900000000";
__AMBER_FUN_date52_v0__5=${__AMBER_FUN_date52_v0};
echo ${__AMBER_FUN_date52_v0__5};
now__53_v0 ;
__AMBER_FUN_now53_v0__6=${__AMBER_FUN_now53_v0};
date_add__55_v0 ${__AMBER_FUN_now53_v0__6} "-1 day";
__AMBER_FUN_date_add55_v0__6=${__AMBER_FUN_date_add55_v0};
echo ${__AMBER_FUN_date_add55_v0__6};
exit__20_v0 0;
__AMBER_FUN_exit20_v0__7=${__AMBER_FUN_exit20_v0};
echo ${__AMBER_FUN_exit20_v0__7} > /dev/null 2>&1;
now__53_v0 ;
__AMBER_FUN_now53_v0__8=${__AMBER_FUN_now53_v0};
__0_date_1_month=${__AMBER_FUN_now53_v0__8}" -1 month";
echo "${__0_date_1_month}";
date__52_v0 "%F" "${__0_date_1_month}";
__AMBER_FUN_date52_v0__10=${__AMBER_FUN_date52_v0};
echo ${__AMBER_FUN_date52_v0__10}