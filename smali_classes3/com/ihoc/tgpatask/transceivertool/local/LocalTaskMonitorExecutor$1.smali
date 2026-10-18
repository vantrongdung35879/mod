.class synthetic Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskMonitorExecutor$1;
.super Ljava/lang/Object;
.source "LocalTaskMonitorExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskMonitorExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$ihoc$tgpatask$transceivertool$local$LocalTaskCMD:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 42
    invoke-static {}, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;->values()[Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskMonitorExecutor$1;->$SwitchMap$com$ihoc$tgpatask$transceivertool$local$LocalTaskCMD:[I

    :try_start_0
    sget-object v1, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;->ICMP:Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;

    invoke-virtual {v1}, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskMonitorExecutor$1;->$SwitchMap$com$ihoc$tgpatask$transceivertool$local$LocalTaskCMD:[I

    sget-object v1, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;->PING:Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;

    invoke-virtual {v1}, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskMonitorExecutor$1;->$SwitchMap$com$ihoc$tgpatask$transceivertool$local$LocalTaskCMD:[I

    sget-object v1, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;->UDP:Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;

    invoke-virtual {v1}, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
