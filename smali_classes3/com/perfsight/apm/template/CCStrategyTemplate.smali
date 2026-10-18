.class public abstract Lcom/perfsight/apm/template/CCStrategyTemplate;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final FEATURE_BATTERY_ENERGY:Ljava/lang/String; = "BATTERY_ENERGY"

.field public static final FEATURE_BATTERY_SAVE_MODE:Ljava/lang/String; = "BATTERY_SAVE_MODE"

.field public static final FEATURE_BOARDCAST_RECEIVER:Ljava/lang/String; = "BOARDCAST_RECEIVER"

.field public static final FEATURE_CELL_SIGNAL:Ljava/lang/String; = "FEATURE_CELL_SIGNAL"

.field public static final FEATURE_CHECK_DECLS_BY_QCC:Ljava/lang/String; = "CHECK_DECLS_BY_QCC"

.field public static final FEATURE_CHECK_DECLS_BY_QCC_SYNC:Ljava/lang/String; = "CHECK_DECLS_BY_QCC_SYNC"

.field public static final FEATURE_CHECK_DECLS_BY_STRING:Ljava/lang/String; = "FEATURE_CHECK_DECLS_BY_STRING"

.field public static final FEATURE_DEF_DCLS:Ljava/lang/String; = "DEF_DCLS"

.field public static final FEATURE_DETECH_IN_TIMEOUT:Ljava/lang/String; = "DETECH_IN_TIMEOUT"

.field public static final FEATURE_DISPLAY_LISTENER:Ljava/lang/String; = "DISPLAY_LISTENER"

.field public static final FEATURE_ENABLED_DEBUG_MODE:Ljava/lang/String; = "ENABLED_DEBUG_MODE"

.field public static final FEATURE_EXIT_INFO:Ljava/lang/String; = "FEATURE_EXIT_INFO"

.field public static final FEATURE_EXTERNAL_FLASH:Ljava/lang/String; = "EXTERNAL_FLASH"

.field public static final FEATURE_EXT_TAG_FUNC:Ljava/lang/String; = "EXT_TAG_FUNC"

.field public static final FEATURE_INIT:Ljava/lang/String; = "INIT"

.field public static final FEATURE_LAUNCHMSG:Ljava/lang/String; = "LAUNCH_MSG"

.field public static final FEATURE_LIFECYCLE:Ljava/lang/String; = "LIFECYCLE"

.field public static final FEATURE_LOCAL_SETTLE:Ljava/lang/String; = "LOCAL_SETTLE"

.field public static final FEATURE_LOW_MEM_STATE_REPORT:Ljava/lang/String; = "LOW_MEM_STATE_REPORT"

.field public static final FEATURE_MARK_LEVEL_FIN:Ljava/lang/String; = "MARK_LEVEL_FIN"

.field public static final FEATURE_MARK_LEVEL_LOAD:Ljava/lang/String; = "MARK_LEVEL_LOAD"

.field public static final FEATURE_MARK_LEVEL_LOAD_COMPLETED:Ljava/lang/String; = "MARK_LEVEL_LOAD_COMPLETED"

.field public static final FEATURE_NETWORKING_MIN:Ljava/lang/String; = "FEATURE_NETWORKING_MIN"

.field public static final FEATURE_POST_EVENT:Ljava/lang/String; = "POST_EVENT"

.field public static final FEATURE_POST_FRAME:Ljava/lang/String; = "POST_FRAME"

.field public static final FEATURE_POST_NETWORK_LATENCY:Ljava/lang/String; = "POST_NETWORK_LATENCY"

.field public static final FEATURE_POST_STEP_EVENT:Ljava/lang/String; = "POST_STEP_EVENT"

.field public static final FEATURE_POST_TRACK_STATE:Ljava/lang/String; = "POST_TRACK_STATE"

.field public static final FEATURE_POST_VALUE_XX:Ljava/lang/String; = "POST_VALUE_XX"

.field public static final FEATURE_PROCESS_ALIVE_MONITOR:Ljava/lang/String; = "PROCESS_ALIVE_MONITOR"

.field public static final FEATURE_QUALCOMM_GFX:Ljava/lang/String; = "QUALCOMM_GFX"

.field public static final FEATURE_SAVE_FPS:Ljava/lang/String; = "SAVE_FPS"

.field public static final FEATURE_SCREEN_BRIGHTNESS:Ljava/lang/String; = "FEATURE_SCREEN_BRIGHTNESS"

.field public static final FEATURE_SET_OPENID:Ljava/lang/String; = "SET_OPENID"

.field public static final FEATURE_SET_QUALITY:Ljava/lang/String; = "SET_QUALITY"

.field public static final FEATURE_SET_SERVERINFO:Ljava/lang/String; = "SET_SERVERINFO"

.field public static final FEATURE_SET_VERSION_IDEN:Ljava/lang/String; = "SET_VERSION_IDEN"

.field public static final FEATURE_TAG_FUNC:Ljava/lang/String; = "TAG_FUNC"

.field public static final FEATURE_THERMAL_STATUS_CHANGE:Ljava/lang/String; = "THERMAL_STATUS_CHANGE"

.field public static final FEATURE_TRACE_THREAD:Ljava/lang/String; = "TRACE_THREAD"

.field public static final FEATURE_X86_OPEN_COLLECT:Ljava/lang/String; = "X86_OPEN_COLLECT"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract checkModuleEnabled()Z
.end method

.method public final getBool(Ljava/lang/String;Z)Z
    .locals 0

    invoke-static {p1, p2}, Lcom/perfsight/apm/jni/TApmNativeHelper;->getBoolByCCService(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public final getDouble(Ljava/lang/String;D)D
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/perfsight/apm/jni/TApmNativeHelper;->getDoubleByCCService(Ljava/lang/String;D)D

    move-result-wide p1

    return-wide p1
.end method

.method public final getInt(Ljava/lang/String;I)I
    .locals 0

    invoke-static {p1, p2}, Lcom/perfsight/apm/jni/TApmNativeHelper;->getIntByCCService(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public final getLong(Ljava/lang/String;J)J
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/perfsight/apm/jni/TApmNativeHelper;->getLongByCCService(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public final getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p1, p3}, Lcom/perfsight/apm/jni/TApmNativeHelper;->getStringByCCService(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public abstract isFeatureEnabled(Ljava/lang/String;)Z
.end method
