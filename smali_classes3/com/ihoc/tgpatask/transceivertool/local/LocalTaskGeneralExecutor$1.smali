.class synthetic Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskGeneralExecutor$1;
.super Ljava/lang/Object;
.source "LocalTaskGeneralExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskGeneralExecutor;
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

    .line 43
    invoke-static {}, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;->values()[Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskGeneralExecutor$1;->$SwitchMap$com$ihoc$tgpatask$transceivertool$local$LocalTaskCMD:[I

    :try_start_0
    sget-object v1, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;->TAPDTEMP:Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;

    invoke-virtual {v1}, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskGeneralExecutor$1;->$SwitchMap$com$ihoc$tgpatask$transceivertool$local$LocalTaskCMD:[I

    sget-object v1, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;->TAPDOPTION:Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;

    invoke-virtual {v1}, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskGeneralExecutor$1;->$SwitchMap$com$ihoc$tgpatask$transceivertool$local$LocalTaskCMD:[I

    sget-object v1, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;->TAPD:Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;

    invoke-virtual {v1}, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskGeneralExecutor$1;->$SwitchMap$com$ihoc$tgpatask$transceivertool$local$LocalTaskCMD:[I

    sget-object v1, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;->LOG:Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;

    invoke-virtual {v1}, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskGeneralExecutor$1;->$SwitchMap$com$ihoc$tgpatask$transceivertool$local$LocalTaskCMD:[I

    sget-object v1, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;->DNS:Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;

    invoke-virtual {v1}, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskGeneralExecutor$1;->$SwitchMap$com$ihoc$tgpatask$transceivertool$local$LocalTaskCMD:[I

    sget-object v1, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;->COUTOMEPIPE:Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;

    invoke-virtual {v1}, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskGeneralExecutor$1;->$SwitchMap$com$ihoc$tgpatask$transceivertool$local$LocalTaskCMD:[I

    sget-object v1, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;->PING:Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;

    invoke-virtual {v1}, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskGeneralExecutor$1;->$SwitchMap$com$ihoc$tgpatask$transceivertool$local$LocalTaskCMD:[I

    sget-object v1, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;->ICMP:Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;

    invoke-virtual {v1}, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskGeneralExecutor$1;->$SwitchMap$com$ihoc$tgpatask$transceivertool$local$LocalTaskCMD:[I

    sget-object v1, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;->UDP:Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;

    invoke-virtual {v1}, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskGeneralExecutor$1;->$SwitchMap$com$ihoc$tgpatask$transceivertool$local$LocalTaskCMD:[I

    sget-object v1, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;->QOS:Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;

    invoke-virtual {v1}, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    return-void
.end method
