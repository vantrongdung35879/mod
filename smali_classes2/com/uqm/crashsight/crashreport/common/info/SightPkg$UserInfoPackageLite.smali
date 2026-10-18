.class public final Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;
.super Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;
.source "CrashSight"

# interfaces
.implements Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/crashreport/common/info/SightPkg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UserInfoPackageLite"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;
    }
.end annotation


# static fields
.field public static final APPID_FIELD_NUMBER:I = 0x3

.field public static final APPVERSION_FIELD_NUMBER:I = 0x8

.field public static final CPUNAME_FIELD_NUMBER:I = 0x10

.field public static final CPUTYPE_FIELD_NUMBER:I = 0x9

.field private static final DEFAULT_INSTANCE:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;

.field public static final DEVICEID_FIELD_NUMBER:I = 0x5

.field public static final LAUNCHTIME_FIELD_NUMBER:I = 0xe

.field public static final MODEL_FIELD_NUMBER:I = 0xc

.field public static final OSVERSION_FIELD_NUMBER:I = 0xa

.field private static final PARSER:Lcom/uqm/crashsight/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/uqm/crashsight/protobuf/Parser<",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;",
            ">;"
        }
    .end annotation
.end field

.field public static final PLATFORMID_FIELD_NUMBER:I = 0xd

.field public static final ROM_FIELD_NUMBER:I = 0xb

.field public static final SCENEID_FIELD_NUMBER:I = 0x7

.field public static final SDKVERSION_FIELD_NUMBER:I = 0x11

.field public static final SERVERENV_FIELD_NUMBER:I = 0xf

.field public static final SESSIONID_FIELD_NUMBER:I = 0x4

.field public static final STARTTIME_FIELD_NUMBER:I = 0x2

.field public static final TYPE_FIELD_NUMBER:I = 0x1

.field public static final USERID_FIELD_NUMBER:I = 0x6

.field private static final serialVersionUID:J


# instance fields
.field private volatile appId_:Ljava/lang/Object;

.field private volatile appVersion_:Ljava/lang/Object;

.field private volatile cpuName_:Ljava/lang/Object;

.field private volatile cpuType_:Ljava/lang/Object;

.field private volatile deviceId_:Ljava/lang/Object;

.field private launchTime_:J

.field private memoizedIsInitialized:B

.field private volatile model_:Ljava/lang/Object;

.field private volatile osVersion_:Ljava/lang/Object;

.field private platformId_:I

.field private volatile rom_:Ljava/lang/Object;

.field private volatile sceneId_:Ljava/lang/Object;

.field private volatile sdkVersion_:Ljava/lang/Object;

.field private volatile serverEnv_:Ljava/lang/Object;

.field private volatile sessionId_:Ljava/lang/Object;

.field private startTime_:J

.field private type_:I

.field private volatile userId_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30076
    new-instance v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;

    invoke-direct {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;-><init>()V

    sput-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->DEFAULT_INSTANCE:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;

    .line 30084
    new-instance v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$1;

    invoke-direct {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$1;-><init>()V

    sput-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 27690
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 28374
    iput-byte v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->memoizedIsInitialized:B

    .line 27691
    const-string v0, ""

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->appId_:Ljava/lang/Object;

    .line 27692
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->sessionId_:Ljava/lang/Object;

    .line 27693
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->deviceId_:Ljava/lang/Object;

    .line 27694
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->userId_:Ljava/lang/Object;

    .line 27695
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->sceneId_:Ljava/lang/Object;

    .line 27696
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->appVersion_:Ljava/lang/Object;

    .line 27697
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->cpuType_:Ljava/lang/Object;

    .line 27698
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->osVersion_:Ljava/lang/Object;

    .line 27699
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->rom_:Ljava/lang/Object;

    .line 27700
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->model_:Ljava/lang/Object;

    .line 27701
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->serverEnv_:Ljava/lang/Object;

    .line 27702
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->cpuName_:Ljava/lang/Object;

    .line 27703
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->sdkVersion_:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 27722
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;-><init>()V

    .line 27724
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27727
    invoke-static {}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 27731
    :try_start_0
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a()I

    move-result v2

    const/4 v3, 0x1

    sparse-switch v2, :sswitch_data_0

    .line 27835
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->parseUnknownField(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    goto/16 :goto_2

    .line 27829
    :sswitch_0
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->k()Ljava/lang/String;

    move-result-object v2

    .line 27831
    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->sdkVersion_:Ljava/lang/Object;

    goto :goto_0

    .line 27823
    :sswitch_1
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->k()Ljava/lang/String;

    move-result-object v2

    .line 27825
    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->cpuName_:Ljava/lang/Object;

    goto :goto_0

    .line 27817
    :sswitch_2
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->k()Ljava/lang/String;

    move-result-object v2

    .line 27819
    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->serverEnv_:Ljava/lang/Object;

    goto :goto_0

    .line 27813
    :sswitch_3
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->e()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->launchTime_:J

    goto :goto_0

    .line 27808
    :sswitch_4
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->f()I

    move-result v2

    iput v2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->platformId_:I

    goto :goto_0

    .line 27801
    :sswitch_5
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->k()Ljava/lang/String;

    move-result-object v2

    .line 27803
    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->model_:Ljava/lang/Object;

    goto :goto_0

    .line 27795
    :sswitch_6
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->k()Ljava/lang/String;

    move-result-object v2

    .line 27797
    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->rom_:Ljava/lang/Object;

    goto :goto_0

    .line 27789
    :sswitch_7
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->k()Ljava/lang/String;

    move-result-object v2

    .line 27791
    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->osVersion_:Ljava/lang/Object;

    goto :goto_0

    .line 27783
    :sswitch_8
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->k()Ljava/lang/String;

    move-result-object v2

    .line 27785
    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->cpuType_:Ljava/lang/Object;

    goto :goto_0

    .line 27777
    :sswitch_9
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->k()Ljava/lang/String;

    move-result-object v2

    .line 27779
    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->appVersion_:Ljava/lang/Object;

    goto :goto_0

    .line 27771
    :sswitch_a
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->k()Ljava/lang/String;

    move-result-object v2

    .line 27773
    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->sceneId_:Ljava/lang/Object;

    goto :goto_0

    .line 27765
    :sswitch_b
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->k()Ljava/lang/String;

    move-result-object v2

    .line 27767
    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->userId_:Ljava/lang/Object;

    goto :goto_0

    .line 27759
    :sswitch_c
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->k()Ljava/lang/String;

    move-result-object v2

    .line 27761
    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->deviceId_:Ljava/lang/Object;

    goto :goto_0

    .line 27753
    :sswitch_d
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->k()Ljava/lang/String;

    move-result-object v2

    .line 27755
    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->sessionId_:Ljava/lang/Object;

    goto :goto_0

    .line 27747
    :sswitch_e
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->k()Ljava/lang/String;

    move-result-object v2

    .line 27749
    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->appId_:Ljava/lang/Object;

    goto :goto_0

    .line 27743
    :sswitch_f
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->e()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->startTime_:J

    goto :goto_0

    .line 27738
    :sswitch_10
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->f()I

    move-result v2

    iput v2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->type_:I
    :try_end_0
    .catch Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_1
    :sswitch_11
    const/4 v1, 0x1

    goto/16 :goto_0

    :goto_2
    if-nez v2, :cond_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 27846
    :try_start_1
    new-instance p2, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 27847
    invoke-virtual {p2, p0}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->a(Lcom/uqm/crashsight/protobuf/MessageLite;)Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 27844
    invoke-virtual {p1, p0}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->a(Lcom/uqm/crashsight/protobuf/MessageLite;)Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27849
    :goto_3
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    .line 27850
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->makeExtensionsImmutable()V

    .line 27851
    throw p1

    .line 27849
    :cond_1
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    .line 27850
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->makeExtensionsImmutable()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_11
        0x8 -> :sswitch_10
        0x10 -> :sswitch_f
        0x1a -> :sswitch_e
        0x22 -> :sswitch_d
        0x2a -> :sswitch_c
        0x32 -> :sswitch_b
        0x3a -> :sswitch_a
        0x42 -> :sswitch_9
        0x4a -> :sswitch_8
        0x52 -> :sswitch_7
        0x5a -> :sswitch_6
        0x62 -> :sswitch_5
        0x68 -> :sswitch_4
        0x70 -> :sswitch_3
        0x7a -> :sswitch_2
        0x82 -> :sswitch_1
        0x8a -> :sswitch_0
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;Lcom/uqm/crashsight/crashreport/common/info/SightPkg$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 27681
    invoke-direct {p0, p1, p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;-><init>(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder<",
            "*>;)V"
        }
    .end annotation

    .line 27688
    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 28374
    iput-byte p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;Lcom/uqm/crashsight/crashreport/common/info/SightPkg$1;)V
    .locals 0

    .line 27681
    invoke-direct {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$38300()Z
    .locals 1

    .line 27681
    sget-boolean v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$38502(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;I)I
    .locals 0

    .line 27681
    iput p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->type_:I

    return p1
.end method

.method static synthetic access$38602(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;J)J
    .locals 0

    .line 27681
    iput-wide p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->startTime_:J

    return-wide p1
.end method

.method static synthetic access$38700(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;)Ljava/lang/Object;
    .locals 0

    .line 27681
    iget-object p0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->appId_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$38702(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 27681
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->appId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$38800(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;)Ljava/lang/Object;
    .locals 0

    .line 27681
    iget-object p0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->sessionId_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$38802(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 27681
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->sessionId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$38900(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;)Ljava/lang/Object;
    .locals 0

    .line 27681
    iget-object p0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->deviceId_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$38902(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 27681
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->deviceId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$39000(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;)Ljava/lang/Object;
    .locals 0

    .line 27681
    iget-object p0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->userId_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$39002(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 27681
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->userId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$39100(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;)Ljava/lang/Object;
    .locals 0

    .line 27681
    iget-object p0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->sceneId_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$39102(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 27681
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->sceneId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$39200(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;)Ljava/lang/Object;
    .locals 0

    .line 27681
    iget-object p0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->appVersion_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$39202(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 27681
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->appVersion_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$39300(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;)Ljava/lang/Object;
    .locals 0

    .line 27681
    iget-object p0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->cpuType_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$39302(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 27681
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->cpuType_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$39400(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;)Ljava/lang/Object;
    .locals 0

    .line 27681
    iget-object p0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->osVersion_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$39402(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 27681
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->osVersion_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$39500(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;)Ljava/lang/Object;
    .locals 0

    .line 27681
    iget-object p0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->rom_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$39502(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 27681
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->rom_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$39600(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;)Ljava/lang/Object;
    .locals 0

    .line 27681
    iget-object p0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->model_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$39602(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 27681
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->model_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$39702(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;I)I
    .locals 0

    .line 27681
    iput p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->platformId_:I

    return p1
.end method

.method static synthetic access$39802(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;J)J
    .locals 0

    .line 27681
    iput-wide p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->launchTime_:J

    return-wide p1
.end method

.method static synthetic access$39900(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;)Ljava/lang/Object;
    .locals 0

    .line 27681
    iget-object p0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->serverEnv_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$39902(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 27681
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->serverEnv_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$40000(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;)Ljava/lang/Object;
    .locals 0

    .line 27681
    iget-object p0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->cpuName_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$40002(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 27681
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->cpuName_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$40100(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;)Ljava/lang/Object;
    .locals 0

    .line 27681
    iget-object p0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->sdkVersion_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$40102(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 27681
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->sdkVersion_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$40200(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;)Lcom/uqm/crashsight/protobuf/UnknownFieldSet;
    .locals 0

    .line 27681
    iget-object p0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method static synthetic access$40300()Lcom/uqm/crashsight/protobuf/Parser;
    .locals 1

    .line 27681
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    return-object v0
.end method

.method static synthetic access$40400(Lcom/uqm/crashsight/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 27681
    invoke-static {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->checkByteStringIsUtf8(Lcom/uqm/crashsight/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$40500(Lcom/uqm/crashsight/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 27681
    invoke-static {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->checkByteStringIsUtf8(Lcom/uqm/crashsight/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$40600(Lcom/uqm/crashsight/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 27681
    invoke-static {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->checkByteStringIsUtf8(Lcom/uqm/crashsight/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$40700(Lcom/uqm/crashsight/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 27681
    invoke-static {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->checkByteStringIsUtf8(Lcom/uqm/crashsight/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$40800(Lcom/uqm/crashsight/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 27681
    invoke-static {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->checkByteStringIsUtf8(Lcom/uqm/crashsight/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$40900(Lcom/uqm/crashsight/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 27681
    invoke-static {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->checkByteStringIsUtf8(Lcom/uqm/crashsight/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$41000(Lcom/uqm/crashsight/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 27681
    invoke-static {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->checkByteStringIsUtf8(Lcom/uqm/crashsight/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$41100(Lcom/uqm/crashsight/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 27681
    invoke-static {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->checkByteStringIsUtf8(Lcom/uqm/crashsight/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$41200(Lcom/uqm/crashsight/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 27681
    invoke-static {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->checkByteStringIsUtf8(Lcom/uqm/crashsight/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$41300(Lcom/uqm/crashsight/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 27681
    invoke-static {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->checkByteStringIsUtf8(Lcom/uqm/crashsight/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$41400(Lcom/uqm/crashsight/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 27681
    invoke-static {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->checkByteStringIsUtf8(Lcom/uqm/crashsight/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$41500(Lcom/uqm/crashsight/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 27681
    invoke-static {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->checkByteStringIsUtf8(Lcom/uqm/crashsight/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$41600(Lcom/uqm/crashsight/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 27681
    invoke-static {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->checkByteStringIsUtf8(Lcom/uqm/crashsight/protobuf/ByteString;)V

    return-void
.end method

.method public static getDefaultInstance()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;
    .locals 1

    .line 30080
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->DEFAULT_INSTANCE:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 27855
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->access$37900()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;
    .locals 1

    .line 28677
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->DEFAULT_INSTANCE:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->toBuilder()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;
    .locals 1

    .line 28680
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->DEFAULT_INSTANCE:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->toBuilder()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->mergeFrom(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28650
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    .line 28651
    invoke-static {v0, p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/uqm/crashsight/protobuf/Parser;Ljava/io/InputStream;)Lcom/uqm/crashsight/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28657
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    .line 28658
    invoke-static {v0, p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/uqm/crashsight/protobuf/Parser;Ljava/io/InputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;

    return-object p0
.end method

.method public static parseFrom(Lcom/uqm/crashsight/protobuf/ByteString;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 28618
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/uqm/crashsight/protobuf/Parser;->parseFrom(Lcom/uqm/crashsight/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;

    return-object p0
.end method

.method public static parseFrom(Lcom/uqm/crashsight/protobuf/ByteString;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 28624
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/uqm/crashsight/protobuf/Parser;->parseFrom(Lcom/uqm/crashsight/protobuf/ByteString;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;

    return-object p0
.end method

.method public static parseFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28663
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    .line 28664
    invoke-static {v0, p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/uqm/crashsight/protobuf/Parser;Lcom/uqm/crashsight/protobuf/CodedInputStream;)Lcom/uqm/crashsight/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;

    return-object p0
.end method

.method public static parseFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28670
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    .line 28671
    invoke-static {v0, p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/uqm/crashsight/protobuf/Parser;Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28638
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    .line 28639
    invoke-static {v0, p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/uqm/crashsight/protobuf/Parser;Ljava/io/InputStream;)Lcom/uqm/crashsight/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28645
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    .line 28646
    invoke-static {v0, p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/uqm/crashsight/protobuf/Parser;Ljava/io/InputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 28607
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/uqm/crashsight/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 28613
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/uqm/crashsight/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 28628
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/uqm/crashsight/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;

    return-object p0
.end method

.method public static parseFrom([BLcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 28634
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/uqm/crashsight/protobuf/Parser;->parseFrom([BLcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;

    return-object p0
.end method

.method public static parser()Lcom/uqm/crashsight/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/uqm/crashsight/protobuf/Parser<",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;",
            ">;"
        }
    .end annotation

    .line 30095
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 28513
    :cond_0
    instance-of v1, p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;

    if-nez v1, :cond_1

    .line 28514
    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 28516
    :cond_1
    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;

    .line 28518
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->getType()I

    move-result v1

    .line 28519
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->getType()I

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    .line 28520
    :cond_2
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->getStartTime()J

    move-result-wide v1

    .line 28521
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->getStartTime()J

    move-result-wide v4

    cmp-long v6, v1, v4

    if-eqz v6, :cond_3

    return v3

    .line 28522
    :cond_3
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->getAppId()Ljava/lang/String;

    move-result-object v1

    .line 28523
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v3

    .line 28524
    :cond_4
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->getSessionId()Ljava/lang/String;

    move-result-object v1

    .line 28525
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->getSessionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v3

    .line 28526
    :cond_5
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 28527
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v3

    .line 28528
    :cond_6
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->getUserId()Ljava/lang/String;

    move-result-object v1

    .line 28529
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v3

    .line 28530
    :cond_7
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->getSceneId()Ljava/lang/String;

    move-result-object v1

    .line 28531
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->getSceneId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v3

    .line 28532
    :cond_8
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->getAppVersion()Ljava/lang/String;

    move-result-object v1

    .line 28533
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->getAppVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v3

    .line 28534
    :cond_9
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->getCpuType()Ljava/lang/String;

    move-result-object v1

    .line 28535
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->getCpuType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v3

    .line 28536
    :cond_a
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->getOsVersion()Ljava/lang/String;

    move-result-object v1

    .line 28537
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->getOsVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v3

    .line 28538
    :cond_b
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->getRom()Ljava/lang/String;

    move-result-object v1

    .line 28539
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->getRom()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v3

    .line 28540
    :cond_c
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->getModel()Ljava/lang/String;

    move-result-object v1

    .line 28541
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->getModel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v3

    .line 28542
    :cond_d
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->getPlatformId()I

    move-result v1

    .line 28543
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->getPlatformId()I

    move-result v2

    if-eq v1, v2, :cond_e

    return v3

    .line 28544
    :cond_e
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->getLaunchTime()J

    move-result-wide v1

    .line 28545
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->getLaunchTime()J

    move-result-wide v4

    cmp-long v6, v1, v4

    if-eqz v6, :cond_f

    return v3

    .line 28546
    :cond_f
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->getServerEnv()Ljava/lang/String;

    move-result-object v1

    .line 28547
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->getServerEnv()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v3

    .line 28548
    :cond_10
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->getCpuName()Ljava/lang/String;

    move-result-object v1

    .line 28549
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->getCpuName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v3

    .line 28550
    :cond_11
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->getSdkVersion()Ljava/lang/String;

    move-result-object v1

    .line 28551
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->getSdkVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    return v3

    .line 28552
    :cond_12
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_13

    return v3

    :cond_13
    return v0
.end method

.method public final getAppId()Ljava/lang/String;
    .locals 2

    .line 27893
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->appId_:Ljava/lang/Object;

    .line 27894
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 27895
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 27897
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 27899
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v0

    .line 27900
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->appId_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getAppIdBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    .line 27910
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->appId_:Ljava/lang/Object;

    .line 27911
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 27912
    check-cast v0, Ljava/lang/String;

    .line 27913
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    .line 27915
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->appId_:Ljava/lang/Object;

    return-object v0

    .line 27918
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final getAppVersion()Ljava/lang/String;
    .locals 2

    .line 28073
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->appVersion_:Ljava/lang/Object;

    .line 28074
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 28075
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 28077
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 28079
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v0

    .line 28080
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->appVersion_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getAppVersionBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    .line 28090
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->appVersion_:Ljava/lang/Object;

    .line 28091
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 28092
    check-cast v0, Ljava/lang/String;

    .line 28093
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    .line 28095
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->appVersion_:Ljava/lang/Object;

    return-object v0

    .line 28098
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final getCpuName()Ljava/lang/String;
    .locals 2

    .line 28309
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->cpuName_:Ljava/lang/Object;

    .line 28310
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 28311
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 28313
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 28315
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v0

    .line 28316
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->cpuName_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getCpuNameBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    .line 28326
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->cpuName_:Ljava/lang/Object;

    .line 28327
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 28328
    check-cast v0, Ljava/lang/String;

    .line 28329
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    .line 28331
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->cpuName_:Ljava/lang/Object;

    return-object v0

    .line 28334
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final getCpuType()Ljava/lang/String;
    .locals 2

    .line 28109
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->cpuType_:Ljava/lang/Object;

    .line 28110
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 28111
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 28113
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 28115
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v0

    .line 28116
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->cpuType_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getCpuTypeBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    .line 28126
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->cpuType_:Ljava/lang/Object;

    .line 28127
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 28128
    check-cast v0, Ljava/lang/String;

    .line 28129
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    .line 28131
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->cpuType_:Ljava/lang/Object;

    return-object v0

    .line 28134
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;
    .locals 1

    .line 30105
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->DEFAULT_INSTANCE:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/uqm/crashsight/protobuf/Message;
    .locals 1

    .line 27681
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->getDefaultInstanceForType()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/uqm/crashsight/protobuf/MessageLite;
    .locals 1

    .line 27681
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->getDefaultInstanceForType()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;

    move-result-object v0

    return-object v0
.end method

.method public final getDeviceId()Ljava/lang/String;
    .locals 2

    .line 27965
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->deviceId_:Ljava/lang/Object;

    .line 27966
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 27967
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 27969
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 27971
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v0

    .line 27972
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->deviceId_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getDeviceIdBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    .line 27982
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->deviceId_:Ljava/lang/Object;

    .line 27983
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 27984
    check-cast v0, Ljava/lang/String;

    .line 27985
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    .line 27987
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->deviceId_:Ljava/lang/Object;

    return-object v0

    .line 27990
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final getLaunchTime()J
    .locals 2

    .line 28263
    iget-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->launchTime_:J

    return-wide v0
.end method

.method public final getModel()Ljava/lang/String;
    .locals 2

    .line 28217
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->model_:Ljava/lang/Object;

    .line 28218
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 28219
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 28221
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 28223
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v0

    .line 28224
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->model_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getModelBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    .line 28234
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->model_:Ljava/lang/Object;

    .line 28235
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 28236
    check-cast v0, Ljava/lang/String;

    .line 28237
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    .line 28239
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->model_:Ljava/lang/Object;

    return-object v0

    .line 28242
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final getOsVersion()Ljava/lang/String;
    .locals 2

    .line 28145
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->osVersion_:Ljava/lang/Object;

    .line 28146
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 28147
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 28149
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 28151
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v0

    .line 28152
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->osVersion_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getOsVersionBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    .line 28162
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->osVersion_:Ljava/lang/Object;

    .line 28163
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 28164
    check-cast v0, Ljava/lang/String;

    .line 28165
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    .line 28167
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->osVersion_:Ljava/lang/Object;

    return-object v0

    .line 28170
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final getParserForType()Lcom/uqm/crashsight/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/uqm/crashsight/protobuf/Parser<",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;",
            ">;"
        }
    .end annotation

    .line 30100
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    return-object v0
.end method

.method public final getPlatformId()I
    .locals 1

    .line 28253
    iget v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->platformId_:I

    return v0
.end method

.method public final getRom()Ljava/lang/String;
    .locals 2

    .line 28181
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->rom_:Ljava/lang/Object;

    .line 28182
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 28183
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 28185
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 28187
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v0

    .line 28188
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->rom_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getRomBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    .line 28198
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->rom_:Ljava/lang/Object;

    .line 28199
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 28200
    check-cast v0, Ljava/lang/String;

    .line 28201
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    .line 28203
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->rom_:Ljava/lang/Object;

    return-object v0

    .line 28206
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final getSceneId()Ljava/lang/String;
    .locals 2

    .line 28037
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->sceneId_:Ljava/lang/Object;

    .line 28038
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 28039
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 28041
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 28043
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v0

    .line 28044
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->sceneId_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getSceneIdBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    .line 28054
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->sceneId_:Ljava/lang/Object;

    .line 28055
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 28056
    check-cast v0, Ljava/lang/String;

    .line 28057
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    .line 28059
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->sceneId_:Ljava/lang/Object;

    return-object v0

    .line 28062
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final getSdkVersion()Ljava/lang/String;
    .locals 2

    .line 28345
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->sdkVersion_:Ljava/lang/Object;

    .line 28346
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 28347
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 28349
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 28351
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v0

    .line 28352
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->sdkVersion_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getSdkVersionBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    .line 28362
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->sdkVersion_:Ljava/lang/Object;

    .line 28363
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 28364
    check-cast v0, Ljava/lang/String;

    .line 28365
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    .line 28367
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->sdkVersion_:Ljava/lang/Object;

    return-object v0

    .line 28370
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 6

    .line 28444
    iget v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 28448
    :cond_0
    iget v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->type_:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 28450
    invoke-static {v1, v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->d(II)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 28452
    :goto_0
    iget-wide v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->startTime_:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_2

    const/4 v5, 0x2

    .line 28454
    invoke-static {v5, v1, v2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->c(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 28456
    :cond_2
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->getAppIdBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/ByteString;->c()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x3

    .line 28457
    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->appId_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 28459
    :cond_3
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->getSessionIdBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/ByteString;->c()Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x4

    .line 28460
    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->sessionId_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 28462
    :cond_4
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->getDeviceIdBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/ByteString;->c()Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v1, 0x5

    .line 28463
    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->deviceId_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 28465
    :cond_5
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->getUserIdBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/ByteString;->c()Z

    move-result v1

    if-nez v1, :cond_6

    const/4 v1, 0x6

    .line 28466
    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->userId_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 28468
    :cond_6
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->getSceneIdBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/ByteString;->c()Z

    move-result v1

    if-nez v1, :cond_7

    const/4 v1, 0x7

    .line 28469
    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->sceneId_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 28471
    :cond_7
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->getAppVersionBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/ByteString;->c()Z

    move-result v1

    if-nez v1, :cond_8

    const/16 v1, 0x8

    .line 28472
    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->appVersion_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 28474
    :cond_8
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->getCpuTypeBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/ByteString;->c()Z

    move-result v1

    if-nez v1, :cond_9

    const/16 v1, 0x9

    .line 28475
    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->cpuType_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 28477
    :cond_9
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->getOsVersionBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/ByteString;->c()Z

    move-result v1

    if-nez v1, :cond_a

    const/16 v1, 0xa

    .line 28478
    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->osVersion_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 28480
    :cond_a
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->getRomBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/ByteString;->c()Z

    move-result v1

    if-nez v1, :cond_b

    const/16 v1, 0xb

    .line 28481
    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->rom_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 28483
    :cond_b
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->getModelBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/ByteString;->c()Z

    move-result v1

    if-nez v1, :cond_c

    const/16 v1, 0xc

    .line 28484
    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->model_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 28486
    :cond_c
    iget v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->platformId_:I

    if-eqz v1, :cond_d

    const/16 v2, 0xd

    .line 28488
    invoke-static {v2, v1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->d(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 28490
    :cond_d
    iget-wide v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->launchTime_:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_e

    const/16 v3, 0xe

    .line 28492
    invoke-static {v3, v1, v2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->c(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 28494
    :cond_e
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->getServerEnvBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/ByteString;->c()Z

    move-result v1

    if-nez v1, :cond_f

    const/16 v1, 0xf

    .line 28495
    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->serverEnv_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 28497
    :cond_f
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->getCpuNameBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/ByteString;->c()Z

    move-result v1

    if-nez v1, :cond_10

    const/16 v1, 0x10

    .line 28498
    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->cpuName_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 28500
    :cond_10
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->getSdkVersionBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/ByteString;->c()Z

    move-result v1

    if-nez v1, :cond_11

    const/16 v1, 0x11

    .line 28501
    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->sdkVersion_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 28503
    :cond_11
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 28504
    iput v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->memoizedSize:I

    return v0
.end method

.method public final getServerEnv()Ljava/lang/String;
    .locals 2

    .line 28273
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->serverEnv_:Ljava/lang/Object;

    .line 28274
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 28275
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 28277
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 28279
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v0

    .line 28280
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->serverEnv_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getServerEnvBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    .line 28290
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->serverEnv_:Ljava/lang/Object;

    .line 28291
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 28292
    check-cast v0, Ljava/lang/String;

    .line 28293
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    .line 28295
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->serverEnv_:Ljava/lang/Object;

    return-object v0

    .line 28298
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final getSessionId()Ljava/lang/String;
    .locals 2

    .line 27929
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->sessionId_:Ljava/lang/Object;

    .line 27930
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 27931
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 27933
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 27935
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v0

    .line 27936
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->sessionId_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getSessionIdBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    .line 27946
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->sessionId_:Ljava/lang/Object;

    .line 27947
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 27948
    check-cast v0, Ljava/lang/String;

    .line 27949
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    .line 27951
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->sessionId_:Ljava/lang/Object;

    return-object v0

    .line 27954
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final getStartTime()J
    .locals 2

    .line 27883
    iget-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->startTime_:J

    return-wide v0
.end method

.method public final getType()I
    .locals 1

    .line 27873
    iget v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->type_:I

    return v0
.end method

.method public final getUnknownFields()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;
    .locals 1

    .line 27716
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public final getUserId()Ljava/lang/String;
    .locals 2

    .line 28001
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->userId_:Ljava/lang/Object;

    .line 28002
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 28003
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 28005
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 28007
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v0

    .line 28008
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->userId_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getUserIdBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    .line 28018
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->userId_:Ljava/lang/Object;

    .line 28019
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 28020
    check-cast v0, Ljava/lang/String;

    .line 28021
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    .line 28023
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->userId_:Ljava/lang/Object;

    return-object v0

    .line 28026
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    .line 28558
    iget v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 28559
    iget v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->memoizedHashCode:I

    return v0

    .line 28562
    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->getDescriptor()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 28564
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->getType()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 28567
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->getStartTime()J

    move-result-wide v1

    .line 28566
    invoke-static {v1, v2}, Lcom/uqm/crashsight/protobuf/Internal;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 28569
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 28571
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->getSessionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    .line 28573
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x35

    .line 28575
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x7

    mul-int/lit8 v0, v0, 0x35

    .line 28577
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->getSceneId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x35

    .line 28579
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->getAppVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x9

    mul-int/lit8 v0, v0, 0x35

    .line 28581
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->getCpuType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xa

    mul-int/lit8 v0, v0, 0x35

    .line 28583
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->getOsVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xb

    mul-int/lit8 v0, v0, 0x35

    .line 28585
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->getRom()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xc

    mul-int/lit8 v0, v0, 0x35

    .line 28587
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->getModel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xd

    mul-int/lit8 v0, v0, 0x35

    .line 28589
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->getPlatformId()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xe

    mul-int/lit8 v0, v0, 0x35

    .line 28592
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->getLaunchTime()J

    move-result-wide v1

    .line 28591
    invoke-static {v1, v2}, Lcom/uqm/crashsight/protobuf/Internal;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xf

    mul-int/lit8 v0, v0, 0x35

    .line 28594
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->getServerEnv()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x10

    mul-int/lit8 v0, v0, 0x35

    .line 28596
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->getCpuName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x11

    mul-int/lit8 v0, v0, 0x35

    .line 28598
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->getSdkVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1d

    .line 28599
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 28600
    iput v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->memoizedHashCode:I

    return v0
.end method

.method protected final internalGetFieldAccessorTable()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 27861
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->access$38000()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;

    const-class v2, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;

    .line 27862
    invoke-virtual {v0, v1, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 28377
    iget-byte v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 28381
    :cond_1
    iput-byte v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->memoizedIsInitialized:B

    return v1
.end method

.method public final newBuilderForType()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;
    .locals 1

    .line 28675
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->newBuilder()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newBuilderForType(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;
    .locals 2

    .line 28691
    new-instance v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;Lcom/uqm/crashsight/crashreport/common/info/SightPkg$1;)V

    return-object v0
.end method

.method public final bridge synthetic newBuilderForType()Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 1

    .line 27681
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->newBuilderForType()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic newBuilderForType(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    .line 27681
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->newBuilderForType(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic newBuilderForType()Lcom/uqm/crashsight/protobuf/MessageLite$Builder;
    .locals 1

    .line 27681
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->newBuilderForType()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newInstance(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 27710
    new-instance p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;

    invoke-direct {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;-><init>()V

    return-object p1
.end method

.method public final toBuilder()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;
    .locals 2

    .line 28684
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->DEFAULT_INSTANCE:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;

    invoke-direct {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;-><init>(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$1;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;

    invoke-direct {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;-><init>(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$1;)V

    .line 28685
    invoke-virtual {v0, p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->mergeFrom(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 1

    .line 27681
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->toBuilder()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/uqm/crashsight/protobuf/MessageLite$Builder;
    .locals 1

    .line 27681
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->toBuilder()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/uqm/crashsight/protobuf/CodedOutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28388
    iget v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->type_:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 28389
    invoke-virtual {p1, v1, v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->b(II)V

    .line 28391
    :cond_0
    iget-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->startTime_:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    const/4 v4, 0x2

    .line 30256
    invoke-virtual {p1, v4, v0, v1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(IJ)V

    .line 28394
    :cond_1
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->getAppIdBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->c()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x3

    .line 28395
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->appId_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->writeString(Lcom/uqm/crashsight/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 28397
    :cond_2
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->getSessionIdBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->c()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x4

    .line 28398
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->sessionId_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->writeString(Lcom/uqm/crashsight/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 28400
    :cond_3
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->getDeviceIdBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->c()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x5

    .line 28401
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->deviceId_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->writeString(Lcom/uqm/crashsight/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 28403
    :cond_4
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->getUserIdBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->c()Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x6

    .line 28404
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->userId_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->writeString(Lcom/uqm/crashsight/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 28406
    :cond_5
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->getSceneIdBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->c()Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x7

    .line 28407
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->sceneId_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->writeString(Lcom/uqm/crashsight/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 28409
    :cond_6
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->getAppVersionBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->c()Z

    move-result v0

    if-nez v0, :cond_7

    const/16 v0, 0x8

    .line 28410
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->appVersion_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->writeString(Lcom/uqm/crashsight/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 28412
    :cond_7
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->getCpuTypeBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->c()Z

    move-result v0

    if-nez v0, :cond_8

    const/16 v0, 0x9

    .line 28413
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->cpuType_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->writeString(Lcom/uqm/crashsight/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 28415
    :cond_8
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->getOsVersionBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->c()Z

    move-result v0

    if-nez v0, :cond_9

    const/16 v0, 0xa

    .line 28416
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->osVersion_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->writeString(Lcom/uqm/crashsight/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 28418
    :cond_9
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->getRomBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->c()Z

    move-result v0

    if-nez v0, :cond_a

    const/16 v0, 0xb

    .line 28419
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->rom_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->writeString(Lcom/uqm/crashsight/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 28421
    :cond_a
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->getModelBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->c()Z

    move-result v0

    if-nez v0, :cond_b

    const/16 v0, 0xc

    .line 28422
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->model_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->writeString(Lcom/uqm/crashsight/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 28424
    :cond_b
    iget v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->platformId_:I

    if-eqz v0, :cond_c

    const/16 v1, 0xd

    .line 28425
    invoke-virtual {p1, v1, v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->b(II)V

    .line 28427
    :cond_c
    iget-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->launchTime_:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_d

    const/16 v2, 0xe

    .line 31256
    invoke-virtual {p1, v2, v0, v1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(IJ)V

    .line 28430
    :cond_d
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->getServerEnvBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->c()Z

    move-result v0

    if-nez v0, :cond_e

    const/16 v0, 0xf

    .line 28431
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->serverEnv_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->writeString(Lcom/uqm/crashsight/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 28433
    :cond_e
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->getCpuNameBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->c()Z

    move-result v0

    if-nez v0, :cond_f

    const/16 v0, 0x10

    .line 28434
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->cpuName_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->writeString(Lcom/uqm/crashsight/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 28436
    :cond_f
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->getSdkVersionBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->c()Z

    move-result v0

    if-nez v0, :cond_10

    const/16 v0, 0x11

    .line 28437
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->sdkVersion_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->writeString(Lcom/uqm/crashsight/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 28439
    :cond_10
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->writeTo(Lcom/uqm/crashsight/protobuf/CodedOutputStream;)V

    return-void
.end method
