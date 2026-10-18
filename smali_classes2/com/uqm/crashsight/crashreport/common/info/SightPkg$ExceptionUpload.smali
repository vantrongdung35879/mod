.class public final Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;
.super Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;
.source "CrashSight"

# interfaces
.implements Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUploadOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/crashreport/common/info/SightPkg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ExceptionUpload"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;,
        Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$UserMapDefaultEntryHolder;,
        Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$ValueMapDefaultEntryHolder;,
        Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$AllStacksDefaultEntryHolder;
    }
.end annotation


# static fields
.field public static final ALLSTACKS_FIELD_NUMBER:I = 0x8

.field public static final APPINFO_FIELD_NUMBER:I = 0xe

.field public static final ATTACHES_FIELD_NUMBER:I = 0x11

.field public static final CALLSTACK_FIELD_NUMBER:I = 0x7

.field public static final COLDSTART_FIELD_NUMBER:I = 0x15

.field public static final CRASHCOUNT_FIELD_NUMBER:I = 0xb

.field public static final CRASHTHREAD_FIELD_NUMBER:I = 0x6

.field public static final CRASHTIME_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;

.field public static final DEVICEBOOTTIME_FIELD_NUMBER:I = 0x1b

.field public static final DEVICEID_FIELD_NUMBER:I = 0xd

.field public static final EHTYPE_FIELD_NUMBER:I = 0x1c

.field public static final EXPADDR_FIELD_NUMBER:I = 0x5

.field public static final EXPMESSAGE_FIELD_NUMBER:I = 0x4

.field public static final EXPNAME_FIELD_NUMBER:I = 0x3

.field public static final EXPUID_FIELD_NUMBER:I = 0x9

.field public static final GATEWAYIP_FIELD_NUMBER:I = 0x14

.field public static final LIBINFOS_FIELD_NUMBER:I = 0xf

.field private static final PARSER:Lcom/uqm/crashsight/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/uqm/crashsight/protobuf/Parser<",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;",
            ">;"
        }
    .end annotation
.end field

.field public static final PIDNAME_FIELD_NUMBER:I = 0x1a

.field public static final PLUGINS_FIELD_NUMBER:I = 0x10

.field public static final SERVERSYMBOLIZE_FIELD_NUMBER:I = 0x18

.field public static final SESSION_FIELD_NUMBER:I = 0xa

.field public static final STACKBEGINADDRESS_FIELD_NUMBER:I = 0x16

.field public static final STACKDATA_FIELD_NUMBER:I = 0x17

.field public static final TEXTCODEFRAGMENTS_FIELD_NUMBER:I = 0x19

.field public static final TYPE_FIELD_NUMBER:I = 0x1

.field public static final USERID_FIELD_NUMBER:I = 0xc

.field public static final USERMAP_FIELD_NUMBER:I = 0x13

.field public static final VALUEMAP_FIELD_NUMBER:I = 0x12

.field private static final serialVersionUID:J


# instance fields
.field private allStacks_:Lcom/uqm/crashsight/protobuf/MapField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/uqm/crashsight/protobuf/MapField<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private appInfo_:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;

.field private attaches_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment;",
            ">;"
        }
    .end annotation
.end field

.field private volatile callStack_:Ljava/lang/Object;

.field private coldStart_:Z

.field private crashCount_:I

.field private volatile crashThread_:Ljava/lang/Object;

.field private crashTime_:J

.field private deviceBootTime_:J

.field private volatile deviceId_:Ljava/lang/Object;

.field private ehType_:I

.field private volatile expAddr_:Ljava/lang/Object;

.field private volatile expMessage_:Ljava/lang/Object;

.field private volatile expName_:Ljava/lang/Object;

.field private volatile expuid_:Ljava/lang/Object;

.field private volatile gatewayIp_:Ljava/lang/Object;

.field private libInfos_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedIsInitialized:B

.field private volatile pidName_:Ljava/lang/Object;

.field private plugins_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private serverSymbolize_:Z

.field private session_:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;

.field private stackBeginAddress_:J

.field private stackData_:Lcom/uqm/crashsight/protobuf/ByteString;

.field private textCodeFragments_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData;",
            ">;"
        }
    .end annotation
.end field

.field private volatile type_:Ljava/lang/Object;

.field private userMap_:Lcom/uqm/crashsight/protobuf/MapField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/uqm/crashsight/protobuf/MapField<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile userid_:Ljava/lang/Object;

.field private valueMap_:Lcom/uqm/crashsight/protobuf/MapField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/uqm/crashsight/protobuf/MapField<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26672
    new-instance v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;

    invoke-direct {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;-><init>()V

    sput-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->DEFAULT_INSTANCE:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;

    .line 26680
    new-instance v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$1;

    invoke-direct {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$1;-><init>()V

    sput-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 21795
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 23002
    iput-byte v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->memoizedIsInitialized:B

    .line 21796
    const-string v0, ""

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->type_:Ljava/lang/Object;

    .line 21797
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->expName_:Ljava/lang/Object;

    .line 21798
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->expMessage_:Ljava/lang/Object;

    .line 21799
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->expAddr_:Ljava/lang/Object;

    .line 21800
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->crashThread_:Ljava/lang/Object;

    .line 21801
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->callStack_:Ljava/lang/Object;

    .line 21802
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->expuid_:Ljava/lang/Object;

    .line 21803
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->userid_:Ljava/lang/Object;

    .line 21804
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->deviceId_:Ljava/lang/Object;

    .line 21805
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->libInfos_:Ljava/util/List;

    .line 21806
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->plugins_:Ljava/util/List;

    .line 21807
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->attaches_:Ljava/util/List;

    .line 21808
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->gatewayIp_:Ljava/lang/Object;

    .line 21809
    sget-object v1, Lcom/uqm/crashsight/protobuf/ByteString;->a:Lcom/uqm/crashsight/protobuf/ByteString;

    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->stackData_:Lcom/uqm/crashsight/protobuf/ByteString;

    .line 21810
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->textCodeFragments_:Ljava/util/List;

    .line 21811
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->pidName_:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 21830
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;-><init>()V

    .line 21832
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21836
    invoke-static {}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_e

    .line 21840
    :try_start_0
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    sparse-switch v3, :sswitch_data_0

    .line 22053
    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->parseUnknownField(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    goto/16 :goto_2

    .line 22049
    :sswitch_0
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->f()I

    move-result v3

    iput v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->ehType_:I

    goto :goto_0

    .line 22044
    :sswitch_1
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->e()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->deviceBootTime_:J

    goto :goto_0

    .line 22037
    :sswitch_2
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->k()Ljava/lang/String;

    move-result-object v3

    .line 22039
    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->pidName_:Ljava/lang/Object;

    goto :goto_0

    :sswitch_3
    and-int/lit8 v3, v2, 0x40

    if-nez v3, :cond_1

    .line 22029
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->textCodeFragments_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x40

    .line 22032
    :cond_1
    iget-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->textCodeFragments_:Ljava/util/List;

    .line 22033
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData;->parser()Lcom/uqm/crashsight/protobuf/Parser;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a(Lcom/uqm/crashsight/protobuf/Parser;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/MessageLite;

    move-result-object v4

    .line 22032
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 22024
    :sswitch_4
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->i()Z

    move-result v3

    iput-boolean v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->serverSymbolize_:Z

    goto :goto_0

    .line 22019
    :sswitch_5
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->l()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->stackData_:Lcom/uqm/crashsight/protobuf/ByteString;

    goto :goto_0

    .line 22014
    :sswitch_6
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->d()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->stackBeginAddress_:J

    goto :goto_0

    .line 22009
    :sswitch_7
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->i()Z

    move-result v3

    iput-boolean v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->coldStart_:Z

    goto :goto_0

    .line 22002
    :sswitch_8
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->k()Ljava/lang/String;

    move-result-object v3

    .line 22004
    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->gatewayIp_:Ljava/lang/Object;

    goto :goto_0

    :sswitch_9
    and-int/lit8 v3, v2, 0x20

    if-nez v3, :cond_2

    .line 21990
    sget-object v3, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$UserMapDefaultEntryHolder;->defaultEntry:Lcom/uqm/crashsight/protobuf/MapEntry;

    invoke-static {v3}, Lcom/uqm/crashsight/protobuf/MapField;->b(Lcom/uqm/crashsight/protobuf/MapEntry;)Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v3

    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->userMap_:Lcom/uqm/crashsight/protobuf/MapField;

    or-int/lit8 v2, v2, 0x20

    .line 21995
    :cond_2
    sget-object v3, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$UserMapDefaultEntryHolder;->defaultEntry:Lcom/uqm/crashsight/protobuf/MapEntry;

    .line 21996
    invoke-virtual {v3}, Lcom/uqm/crashsight/protobuf/MapEntry;->getParserForType()Lcom/uqm/crashsight/protobuf/Parser;

    move-result-object v3

    .line 21995
    invoke-virtual {p1, v3, p2}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a(Lcom/uqm/crashsight/protobuf/Parser;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/uqm/crashsight/protobuf/MapEntry;

    .line 21997
    iget-object v4, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->userMap_:Lcom/uqm/crashsight/protobuf/MapField;

    invoke-virtual {v4}, Lcom/uqm/crashsight/protobuf/MapField;->b()Ljava/util/Map;

    move-result-object v4

    .line 21998
    invoke-virtual {v3}, Lcom/uqm/crashsight/protobuf/MapEntry;->a()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3}, Lcom/uqm/crashsight/protobuf/MapEntry;->b()Ljava/lang/Object;

    move-result-object v3

    .line 21997
    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :sswitch_a
    and-int/lit8 v3, v2, 0x10

    if-nez v3, :cond_3

    .line 21977
    sget-object v3, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$ValueMapDefaultEntryHolder;->defaultEntry:Lcom/uqm/crashsight/protobuf/MapEntry;

    invoke-static {v3}, Lcom/uqm/crashsight/protobuf/MapField;->b(Lcom/uqm/crashsight/protobuf/MapEntry;)Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v3

    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->valueMap_:Lcom/uqm/crashsight/protobuf/MapField;

    or-int/lit8 v2, v2, 0x10

    .line 21982
    :cond_3
    sget-object v3, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$ValueMapDefaultEntryHolder;->defaultEntry:Lcom/uqm/crashsight/protobuf/MapEntry;

    .line 21983
    invoke-virtual {v3}, Lcom/uqm/crashsight/protobuf/MapEntry;->getParserForType()Lcom/uqm/crashsight/protobuf/Parser;

    move-result-object v3

    .line 21982
    invoke-virtual {p1, v3, p2}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a(Lcom/uqm/crashsight/protobuf/Parser;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/uqm/crashsight/protobuf/MapEntry;

    .line 21984
    iget-object v4, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->valueMap_:Lcom/uqm/crashsight/protobuf/MapField;

    invoke-virtual {v4}, Lcom/uqm/crashsight/protobuf/MapField;->b()Ljava/util/Map;

    move-result-object v4

    .line 21985
    invoke-virtual {v3}, Lcom/uqm/crashsight/protobuf/MapEntry;->a()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3}, Lcom/uqm/crashsight/protobuf/MapEntry;->b()Ljava/lang/Object;

    move-result-object v3

    .line 21984
    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :sswitch_b
    and-int/lit8 v3, v2, 0x8

    if-nez v3, :cond_4

    .line 21968
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->attaches_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x8

    .line 21971
    :cond_4
    iget-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->attaches_:Ljava/util/List;

    .line 21972
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment;->parser()Lcom/uqm/crashsight/protobuf/Parser;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a(Lcom/uqm/crashsight/protobuf/Parser;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/MessageLite;

    move-result-object v4

    .line 21971
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_c
    and-int/lit8 v3, v2, 0x4

    if-nez v3, :cond_5

    .line 21959
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->plugins_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x4

    .line 21962
    :cond_5
    iget-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->plugins_:Ljava/util/List;

    .line 21963
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->parser()Lcom/uqm/crashsight/protobuf/Parser;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a(Lcom/uqm/crashsight/protobuf/Parser;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/MessageLite;

    move-result-object v4

    .line 21962
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_d
    and-int/lit8 v3, v2, 0x2

    if-nez v3, :cond_6

    .line 21950
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->libInfos_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x2

    .line 21953
    :cond_6
    iget-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->libInfos_:Ljava/util/List;

    .line 21954
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->parser()Lcom/uqm/crashsight/protobuf/Parser;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a(Lcom/uqm/crashsight/protobuf/Parser;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/MessageLite;

    move-result-object v4

    .line 21953
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 21937
    :sswitch_e
    iget-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->appInfo_:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;

    if-eqz v3, :cond_7

    .line 21938
    invoke-virtual {v3}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->toBuilder()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;

    move-result-object v4

    .line 21940
    :cond_7
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->parser()Lcom/uqm/crashsight/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a(Lcom/uqm/crashsight/protobuf/Parser;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;

    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->appInfo_:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;

    if-eqz v4, :cond_0

    .line 21942
    invoke-virtual {v4, v3}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->mergeFrom(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;

    .line 21943
    invoke-virtual {v4}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->buildPartial()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->appInfo_:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;

    goto/16 :goto_0

    .line 21930
    :sswitch_f
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->k()Ljava/lang/String;

    move-result-object v3

    .line 21932
    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->deviceId_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 21924
    :sswitch_10
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->k()Ljava/lang/String;

    move-result-object v3

    .line 21926
    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->userid_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 21920
    :sswitch_11
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->f()I

    move-result v3

    iput v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->crashCount_:I

    goto/16 :goto_0

    .line 21907
    :sswitch_12
    iget-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->session_:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;

    if-eqz v3, :cond_8

    .line 21908
    invoke-virtual {v3}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;->toBuilder()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;

    move-result-object v4

    .line 21910
    :cond_8
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;->parser()Lcom/uqm/crashsight/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a(Lcom/uqm/crashsight/protobuf/Parser;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;

    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->session_:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;

    if-eqz v4, :cond_0

    .line 21912
    invoke-virtual {v4, v3}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;->mergeFrom(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;

    .line 21913
    invoke-virtual {v4}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;->buildPartial()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;

    move-result-object v3

    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->session_:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;

    goto/16 :goto_0

    .line 21900
    :sswitch_13
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->k()Ljava/lang/String;

    move-result-object v3

    .line 21902
    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->expuid_:Ljava/lang/Object;

    goto/16 :goto_0

    :sswitch_14
    and-int/lit8 v3, v2, 0x1

    if-nez v3, :cond_9

    .line 21888
    sget-object v3, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$AllStacksDefaultEntryHolder;->defaultEntry:Lcom/uqm/crashsight/protobuf/MapEntry;

    invoke-static {v3}, Lcom/uqm/crashsight/protobuf/MapField;->b(Lcom/uqm/crashsight/protobuf/MapEntry;)Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v3

    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->allStacks_:Lcom/uqm/crashsight/protobuf/MapField;

    or-int/lit8 v2, v2, 0x1

    .line 21893
    :cond_9
    sget-object v3, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$AllStacksDefaultEntryHolder;->defaultEntry:Lcom/uqm/crashsight/protobuf/MapEntry;

    .line 21894
    invoke-virtual {v3}, Lcom/uqm/crashsight/protobuf/MapEntry;->getParserForType()Lcom/uqm/crashsight/protobuf/Parser;

    move-result-object v3

    .line 21893
    invoke-virtual {p1, v3, p2}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a(Lcom/uqm/crashsight/protobuf/Parser;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/uqm/crashsight/protobuf/MapEntry;

    .line 21895
    iget-object v4, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->allStacks_:Lcom/uqm/crashsight/protobuf/MapField;

    invoke-virtual {v4}, Lcom/uqm/crashsight/protobuf/MapField;->b()Ljava/util/Map;

    move-result-object v4

    .line 21896
    invoke-virtual {v3}, Lcom/uqm/crashsight/protobuf/MapEntry;->a()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3}, Lcom/uqm/crashsight/protobuf/MapEntry;->b()Ljava/lang/Object;

    move-result-object v3

    .line 21895
    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 21881
    :sswitch_15
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->k()Ljava/lang/String;

    move-result-object v3

    .line 21883
    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->callStack_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 21875
    :sswitch_16
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->k()Ljava/lang/String;

    move-result-object v3

    .line 21877
    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->crashThread_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 21869
    :sswitch_17
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->k()Ljava/lang/String;

    move-result-object v3

    .line 21871
    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->expAddr_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 21863
    :sswitch_18
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->k()Ljava/lang/String;

    move-result-object v3

    .line 21865
    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->expMessage_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 21857
    :sswitch_19
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->k()Ljava/lang/String;

    move-result-object v3

    .line 21859
    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->expName_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 21853
    :sswitch_1a
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->e()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->crashTime_:J

    goto/16 :goto_0

    .line 21846
    :sswitch_1b
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->k()Ljava/lang/String;

    move-result-object v3

    .line 21848
    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->type_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_1
    :sswitch_1c
    const/4 v1, 0x1

    goto/16 :goto_0

    :goto_2
    if-nez v3, :cond_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 22064
    :try_start_1
    new-instance p2, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 22065
    invoke-virtual {p2, p0}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->a(Lcom/uqm/crashsight/protobuf/MessageLite;)Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 22062
    invoke-virtual {p1, p0}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->a(Lcom/uqm/crashsight/protobuf/MessageLite;)Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    and-int/lit8 p2, v2, 0x2

    if-eqz p2, :cond_a

    .line 22068
    iget-object p2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->libInfos_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->libInfos_:Ljava/util/List;

    :cond_a
    and-int/lit8 p2, v2, 0x4

    if-eqz p2, :cond_b

    .line 22071
    iget-object p2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->plugins_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->plugins_:Ljava/util/List;

    :cond_b
    and-int/lit8 p2, v2, 0x8

    if-eqz p2, :cond_c

    .line 22074
    iget-object p2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->attaches_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->attaches_:Ljava/util/List;

    :cond_c
    and-int/lit8 p2, v2, 0x40

    if-eqz p2, :cond_d

    .line 22077
    iget-object p2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->textCodeFragments_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->textCodeFragments_:Ljava/util/List;

    .line 22079
    :cond_d
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    .line 22080
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->makeExtensionsImmutable()V

    .line 22081
    throw p1

    :cond_e
    and-int/lit8 p1, v2, 0x2

    if-eqz p1, :cond_f

    .line 22068
    iget-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->libInfos_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->libInfos_:Ljava/util/List;

    :cond_f
    and-int/lit8 p1, v2, 0x4

    if-eqz p1, :cond_10

    .line 22071
    iget-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->plugins_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->plugins_:Ljava/util/List;

    :cond_10
    and-int/lit8 p1, v2, 0x8

    if-eqz p1, :cond_11

    .line 22074
    iget-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->attaches_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->attaches_:Ljava/util/List;

    :cond_11
    and-int/lit8 p1, v2, 0x40

    if-eqz p1, :cond_12

    .line 22077
    iget-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->textCodeFragments_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->textCodeFragments_:Ljava/util/List;

    .line 22079
    :cond_12
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    .line 22080
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->makeExtensionsImmutable()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1c
        0xa -> :sswitch_1b
        0x10 -> :sswitch_1a
        0x1a -> :sswitch_19
        0x22 -> :sswitch_18
        0x2a -> :sswitch_17
        0x32 -> :sswitch_16
        0x3a -> :sswitch_15
        0x42 -> :sswitch_14
        0x4a -> :sswitch_13
        0x52 -> :sswitch_12
        0x58 -> :sswitch_11
        0x62 -> :sswitch_10
        0x6a -> :sswitch_f
        0x72 -> :sswitch_e
        0x7a -> :sswitch_d
        0x82 -> :sswitch_c
        0x8a -> :sswitch_b
        0x92 -> :sswitch_a
        0x9a -> :sswitch_9
        0xa2 -> :sswitch_8
        0xa8 -> :sswitch_7
        0xb0 -> :sswitch_6
        0xba -> :sswitch_5
        0xc0 -> :sswitch_4
        0xca -> :sswitch_3
        0xd2 -> :sswitch_2
        0xd8 -> :sswitch_1
        0xe0 -> :sswitch_0
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;Lcom/uqm/crashsight/crashreport/common/info/SightPkg$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 21786
    invoke-direct {p0, p1, p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;-><init>(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)V

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

    .line 21793
    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 23002
    iput-byte p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;Lcom/uqm/crashsight/crashreport/common/info/SightPkg$1;)V
    .locals 0

    .line 21786
    invoke-direct {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$31700()Z
    .locals 1

    .line 21786
    sget-boolean v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$31900(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;)Ljava/lang/Object;
    .locals 0

    .line 21786
    iget-object p0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->type_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$31902(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 21786
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->type_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$32002(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;J)J
    .locals 0

    .line 21786
    iput-wide p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->crashTime_:J

    return-wide p1
.end method

.method static synthetic access$32100(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;)Ljava/lang/Object;
    .locals 0

    .line 21786
    iget-object p0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->expName_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$32102(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 21786
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->expName_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$32200(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;)Ljava/lang/Object;
    .locals 0

    .line 21786
    iget-object p0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->expMessage_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$32202(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 21786
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->expMessage_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$32300(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;)Ljava/lang/Object;
    .locals 0

    .line 21786
    iget-object p0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->expAddr_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$32302(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 21786
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->expAddr_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$32400(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;)Ljava/lang/Object;
    .locals 0

    .line 21786
    iget-object p0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->crashThread_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$32402(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 21786
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->crashThread_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$32500(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;)Ljava/lang/Object;
    .locals 0

    .line 21786
    iget-object p0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->callStack_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$32502(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 21786
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->callStack_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$32600(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;)Lcom/uqm/crashsight/protobuf/MapField;
    .locals 0

    .line 21786
    iget-object p0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->allStacks_:Lcom/uqm/crashsight/protobuf/MapField;

    return-object p0
.end method

.method static synthetic access$32602(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;Lcom/uqm/crashsight/protobuf/MapField;)Lcom/uqm/crashsight/protobuf/MapField;
    .locals 0

    .line 21786
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->allStacks_:Lcom/uqm/crashsight/protobuf/MapField;

    return-object p1
.end method

.method static synthetic access$32700(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;)Ljava/lang/Object;
    .locals 0

    .line 21786
    iget-object p0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->expuid_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$32702(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 21786
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->expuid_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$32802(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;
    .locals 0

    .line 21786
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->session_:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;

    return-object p1
.end method

.method static synthetic access$32902(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;I)I
    .locals 0

    .line 21786
    iput p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->crashCount_:I

    return p1
.end method

.method static synthetic access$33000(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;)Ljava/lang/Object;
    .locals 0

    .line 21786
    iget-object p0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->userid_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$33002(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 21786
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->userid_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$33100(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;)Ljava/lang/Object;
    .locals 0

    .line 21786
    iget-object p0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->deviceId_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$33102(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 21786
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->deviceId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$33202(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;
    .locals 0

    .line 21786
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->appInfo_:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;

    return-object p1
.end method

.method static synthetic access$33300(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;)Ljava/util/List;
    .locals 0

    .line 21786
    iget-object p0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->libInfos_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$33302(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 21786
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->libInfos_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$33400(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;)Ljava/util/List;
    .locals 0

    .line 21786
    iget-object p0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->plugins_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$33402(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 21786
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->plugins_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$33500(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;)Ljava/util/List;
    .locals 0

    .line 21786
    iget-object p0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->attaches_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$33502(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 21786
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->attaches_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$33600(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;)Lcom/uqm/crashsight/protobuf/MapField;
    .locals 0

    .line 21786
    iget-object p0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->valueMap_:Lcom/uqm/crashsight/protobuf/MapField;

    return-object p0
.end method

.method static synthetic access$33602(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;Lcom/uqm/crashsight/protobuf/MapField;)Lcom/uqm/crashsight/protobuf/MapField;
    .locals 0

    .line 21786
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->valueMap_:Lcom/uqm/crashsight/protobuf/MapField;

    return-object p1
.end method

.method static synthetic access$33700(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;)Lcom/uqm/crashsight/protobuf/MapField;
    .locals 0

    .line 21786
    iget-object p0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->userMap_:Lcom/uqm/crashsight/protobuf/MapField;

    return-object p0
.end method

.method static synthetic access$33702(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;Lcom/uqm/crashsight/protobuf/MapField;)Lcom/uqm/crashsight/protobuf/MapField;
    .locals 0

    .line 21786
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->userMap_:Lcom/uqm/crashsight/protobuf/MapField;

    return-object p1
.end method

.method static synthetic access$33800(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;)Ljava/lang/Object;
    .locals 0

    .line 21786
    iget-object p0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->gatewayIp_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$33802(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 21786
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->gatewayIp_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$33902(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;Z)Z
    .locals 0

    .line 21786
    iput-boolean p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->coldStart_:Z

    return p1
.end method

.method static synthetic access$34002(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;J)J
    .locals 0

    .line 21786
    iput-wide p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->stackBeginAddress_:J

    return-wide p1
.end method

.method static synthetic access$34102(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;Lcom/uqm/crashsight/protobuf/ByteString;)Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 0

    .line 21786
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->stackData_:Lcom/uqm/crashsight/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$34202(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;Z)Z
    .locals 0

    .line 21786
    iput-boolean p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->serverSymbolize_:Z

    return p1
.end method

.method static synthetic access$34300(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;)Ljava/util/List;
    .locals 0

    .line 21786
    iget-object p0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->textCodeFragments_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$34302(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 21786
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->textCodeFragments_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$34400(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;)Ljava/lang/Object;
    .locals 0

    .line 21786
    iget-object p0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->pidName_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$34402(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 21786
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->pidName_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$34502(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;J)J
    .locals 0

    .line 21786
    iput-wide p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->deviceBootTime_:J

    return-wide p1
.end method

.method static synthetic access$34602(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;I)I
    .locals 0

    .line 21786
    iput p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->ehType_:I

    return p1
.end method

.method static synthetic access$34700(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;)Lcom/uqm/crashsight/protobuf/MapField;
    .locals 0

    .line 21786
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->internalGetAllStacks()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$34800()Z
    .locals 1

    .line 21786
    sget-boolean v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$34900()Z
    .locals 1

    .line 21786
    sget-boolean v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$35000()Z
    .locals 1

    .line 21786
    sget-boolean v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$35100(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;)Lcom/uqm/crashsight/protobuf/MapField;
    .locals 0

    .line 21786
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->internalGetValueMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$35200(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;)Lcom/uqm/crashsight/protobuf/MapField;
    .locals 0

    .line 21786
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->internalGetUserMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$35300()Z
    .locals 1

    .line 21786
    sget-boolean v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$35400(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;)Lcom/uqm/crashsight/protobuf/UnknownFieldSet;
    .locals 0

    .line 21786
    iget-object p0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method static synthetic access$35500()Lcom/uqm/crashsight/protobuf/Parser;
    .locals 1

    .line 21786
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    return-object v0
.end method

.method static synthetic access$35600(Lcom/uqm/crashsight/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 21786
    invoke-static {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->checkByteStringIsUtf8(Lcom/uqm/crashsight/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$35700(Lcom/uqm/crashsight/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 21786
    invoke-static {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->checkByteStringIsUtf8(Lcom/uqm/crashsight/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$35800(Lcom/uqm/crashsight/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 21786
    invoke-static {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->checkByteStringIsUtf8(Lcom/uqm/crashsight/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$35900(Lcom/uqm/crashsight/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 21786
    invoke-static {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->checkByteStringIsUtf8(Lcom/uqm/crashsight/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$36000(Lcom/uqm/crashsight/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 21786
    invoke-static {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->checkByteStringIsUtf8(Lcom/uqm/crashsight/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$36100(Lcom/uqm/crashsight/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 21786
    invoke-static {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->checkByteStringIsUtf8(Lcom/uqm/crashsight/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$36200(Lcom/uqm/crashsight/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 21786
    invoke-static {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->checkByteStringIsUtf8(Lcom/uqm/crashsight/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$36300(Lcom/uqm/crashsight/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 21786
    invoke-static {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->checkByteStringIsUtf8(Lcom/uqm/crashsight/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$36400(Lcom/uqm/crashsight/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 21786
    invoke-static {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->checkByteStringIsUtf8(Lcom/uqm/crashsight/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$36500(Lcom/uqm/crashsight/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 21786
    invoke-static {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->checkByteStringIsUtf8(Lcom/uqm/crashsight/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$36600(Lcom/uqm/crashsight/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 21786
    invoke-static {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->checkByteStringIsUtf8(Lcom/uqm/crashsight/protobuf/ByteString;)V

    return-void
.end method

.method public static getDefaultInstance()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;
    .locals 1

    .line 26676
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->DEFAULT_INSTANCE:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 22085
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->access$31000()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private internalGetAllStacks()Lcom/uqm/crashsight/protobuf/MapField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/uqm/crashsight/protobuf/MapField<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 22354
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->allStacks_:Lcom/uqm/crashsight/protobuf/MapField;

    if-nez v0, :cond_0

    .line 22355
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$AllStacksDefaultEntryHolder;->defaultEntry:Lcom/uqm/crashsight/protobuf/MapEntry;

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/MapField;->a(Lcom/uqm/crashsight/protobuf/MapEntry;)Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private internalGetUserMap()Lcom/uqm/crashsight/protobuf/MapField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/uqm/crashsight/protobuf/MapField<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 22775
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->userMap_:Lcom/uqm/crashsight/protobuf/MapField;

    if-nez v0, :cond_0

    .line 22776
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$UserMapDefaultEntryHolder;->defaultEntry:Lcom/uqm/crashsight/protobuf/MapEntry;

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/MapField;->a(Lcom/uqm/crashsight/protobuf/MapEntry;)Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private internalGetValueMap()Lcom/uqm/crashsight/protobuf/MapField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/uqm/crashsight/protobuf/MapField<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 22699
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->valueMap_:Lcom/uqm/crashsight/protobuf/MapField;

    if-nez v0, :cond_0

    .line 22700
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$ValueMapDefaultEntryHolder;->defaultEntry:Lcom/uqm/crashsight/protobuf/MapEntry;

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/MapField;->a(Lcom/uqm/crashsight/protobuf/MapEntry;)Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static newBuilder()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;
    .locals 1

    .line 23482
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->DEFAULT_INSTANCE:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->toBuilder()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;
    .locals 1

    .line 23485
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->DEFAULT_INSTANCE:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->toBuilder()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->mergeFrom(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23455
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    .line 23456
    invoke-static {v0, p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/uqm/crashsight/protobuf/Parser;Ljava/io/InputStream;)Lcom/uqm/crashsight/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23462
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    .line 23463
    invoke-static {v0, p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/uqm/crashsight/protobuf/Parser;Ljava/io/InputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;

    return-object p0
.end method

.method public static parseFrom(Lcom/uqm/crashsight/protobuf/ByteString;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 23423
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/uqm/crashsight/protobuf/Parser;->parseFrom(Lcom/uqm/crashsight/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;

    return-object p0
.end method

.method public static parseFrom(Lcom/uqm/crashsight/protobuf/ByteString;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 23429
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/uqm/crashsight/protobuf/Parser;->parseFrom(Lcom/uqm/crashsight/protobuf/ByteString;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;

    return-object p0
.end method

.method public static parseFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23468
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    .line 23469
    invoke-static {v0, p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/uqm/crashsight/protobuf/Parser;Lcom/uqm/crashsight/protobuf/CodedInputStream;)Lcom/uqm/crashsight/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;

    return-object p0
.end method

.method public static parseFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23475
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    .line 23476
    invoke-static {v0, p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/uqm/crashsight/protobuf/Parser;Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23443
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    .line 23444
    invoke-static {v0, p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/uqm/crashsight/protobuf/Parser;Ljava/io/InputStream;)Lcom/uqm/crashsight/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23450
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    .line 23451
    invoke-static {v0, p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/uqm/crashsight/protobuf/Parser;Ljava/io/InputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 23412
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/uqm/crashsight/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 23418
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/uqm/crashsight/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 23433
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/uqm/crashsight/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;

    return-object p0
.end method

.method public static parseFrom([BLcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 23439
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/uqm/crashsight/protobuf/Parser;->parseFrom([BLcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;

    return-object p0
.end method

.method public static parser()Lcom/uqm/crashsight/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/uqm/crashsight/protobuf/Parser<",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;",
            ">;"
        }
    .end annotation

    .line 26691
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public final containsAllStacks(Ljava/lang/String;)Z
    .locals 1

    .line 22370
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22371
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->internalGetAllStacks()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final containsUserMap(Ljava/lang/String;)Z
    .locals 1

    .line 22791
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22792
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->internalGetUserMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final containsValueMap(Ljava/lang/String;)Z
    .locals 1

    .line 22715
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22716
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->internalGetValueMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 23247
    :cond_0
    instance-of v1, p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;

    if-nez v1, :cond_1

    .line 23248
    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 23250
    :cond_1
    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;

    .line 23252
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getType()Ljava/lang/String;

    move-result-object v1

    .line 23253
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 23254
    :cond_2
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getCrashTime()J

    move-result-wide v3

    .line 23255
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getCrashTime()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    .line 23256
    :cond_3
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getExpName()Ljava/lang/String;

    move-result-object v1

    .line 23257
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getExpName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 23258
    :cond_4
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getExpMessage()Ljava/lang/String;

    move-result-object v1

    .line 23259
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getExpMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 23260
    :cond_5
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getExpAddr()Ljava/lang/String;

    move-result-object v1

    .line 23261
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getExpAddr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    .line 23262
    :cond_6
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getCrashThread()Ljava/lang/String;

    move-result-object v1

    .line 23263
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getCrashThread()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    .line 23264
    :cond_7
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getCallStack()Ljava/lang/String;

    move-result-object v1

    .line 23265
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getCallStack()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    .line 23266
    :cond_8
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->internalGetAllStacks()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v1

    .line 23267
    invoke-direct {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->internalGetAllStacks()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v3

    .line 23266
    invoke-virtual {v1, v3}, Lcom/uqm/crashsight/protobuf/MapField;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    .line 23268
    :cond_9
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getExpuid()Ljava/lang/String;

    move-result-object v1

    .line 23269
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getExpuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    .line 23270
    :cond_a
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->hasSession()Z

    move-result v1

    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->hasSession()Z

    move-result v3

    if-eq v1, v3, :cond_b

    return v2

    .line 23271
    :cond_b
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->hasSession()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 23272
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getSession()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;

    move-result-object v1

    .line 23273
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getSession()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    .line 23275
    :cond_c
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getCrashCount()I

    move-result v1

    .line 23276
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getCrashCount()I

    move-result v3

    if-eq v1, v3, :cond_d

    return v2

    .line 23277
    :cond_d
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getUserid()Ljava/lang/String;

    move-result-object v1

    .line 23278
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getUserid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    .line 23279
    :cond_e
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 23280
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    .line 23281
    :cond_f
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->hasAppInfo()Z

    move-result v1

    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->hasAppInfo()Z

    move-result v3

    if-eq v1, v3, :cond_10

    return v2

    .line 23282
    :cond_10
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->hasAppInfo()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 23283
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getAppInfo()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;

    move-result-object v1

    .line 23284
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getAppInfo()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    .line 23286
    :cond_11
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getLibInfosList()Ljava/util/List;

    move-result-object v1

    .line 23287
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getLibInfosList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    return v2

    .line 23288
    :cond_12
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getPluginsList()Ljava/util/List;

    move-result-object v1

    .line 23289
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getPluginsList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    return v2

    .line 23290
    :cond_13
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getAttachesList()Ljava/util/List;

    move-result-object v1

    .line 23291
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getAttachesList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    return v2

    .line 23292
    :cond_14
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->internalGetValueMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v1

    .line 23293
    invoke-direct {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->internalGetValueMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v3

    .line 23292
    invoke-virtual {v1, v3}, Lcom/uqm/crashsight/protobuf/MapField;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    return v2

    .line 23294
    :cond_15
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->internalGetUserMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v1

    .line 23295
    invoke-direct {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->internalGetUserMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v3

    .line 23294
    invoke-virtual {v1, v3}, Lcom/uqm/crashsight/protobuf/MapField;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    return v2

    .line 23296
    :cond_16
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getGatewayIp()Ljava/lang/String;

    move-result-object v1

    .line 23297
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getGatewayIp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    .line 23298
    :cond_17
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getColdStart()Z

    move-result v1

    .line 23299
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getColdStart()Z

    move-result v3

    if-eq v1, v3, :cond_18

    return v2

    .line 23300
    :cond_18
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getStackBeginAddress()J

    move-result-wide v3

    .line 23301
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getStackBeginAddress()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_19

    return v2

    .line 23302
    :cond_19
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getStackData()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v1

    .line 23303
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getStackData()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/uqm/crashsight/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    return v2

    .line 23304
    :cond_1a
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getServerSymbolize()Z

    move-result v1

    .line 23305
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getServerSymbolize()Z

    move-result v3

    if-eq v1, v3, :cond_1b

    return v2

    .line 23306
    :cond_1b
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getTextCodeFragmentsList()Ljava/util/List;

    move-result-object v1

    .line 23307
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getTextCodeFragmentsList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    return v2

    .line 23308
    :cond_1c
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getPidName()Ljava/lang/String;

    move-result-object v1

    .line 23309
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getPidName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    return v2

    .line 23310
    :cond_1d
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getDeviceBootTime()J

    move-result-wide v3

    .line 23311
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getDeviceBootTime()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_1e

    return v2

    .line 23312
    :cond_1e
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getEhType()I

    move-result v1

    .line 23313
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getEhType()I

    move-result v3

    if-eq v1, v3, :cond_1f

    return v2

    .line 23314
    :cond_1f
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_20

    return v2

    :cond_20
    return v0
.end method

.method public final getAllStacks()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 22378
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getAllStacksMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getAllStacksCount()I
    .locals 1

    .line 22362
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->internalGetAllStacks()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public final getAllStacksMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 22385
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->internalGetAllStacks()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->a()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getAllStacksOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 22394
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22396
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->internalGetAllStacks()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->a()Ljava/util/Map;

    move-result-object v0

    .line 22397
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    return-object p2
.end method

.method public final getAllStacksOrThrow(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 22405
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22407
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->internalGetAllStacks()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->a()Ljava/util/Map;

    move-result-object v0

    .line 22408
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 22411
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 22409
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final getAppInfo()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;
    .locals 1

    .line 22569
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->appInfo_:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->getDefaultInstance()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final getAppInfoOrBuilder()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfoOrBuilder;
    .locals 1

    .line 22575
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getAppInfo()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;

    move-result-object v0

    return-object v0
.end method

.method public final getAttaches(I)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment;
    .locals 1

    .line 22673
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->attaches_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment;

    return-object p1
.end method

.method public final getAttachesCount()I
    .locals 1

    .line 22667
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->attaches_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getAttachesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment;",
            ">;"
        }
    .end annotation

    .line 22654
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->attaches_:Ljava/util/List;

    return-object v0
.end method

.method public final getAttachesOrBuilder(I)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachmentOrBuilder;
    .locals 1

    .line 22680
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->attaches_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachmentOrBuilder;

    return-object p1
.end method

.method public final getAttachesOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachmentOrBuilder;",
            ">;"
        }
    .end annotation

    .line 22661
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->attaches_:Ljava/util/List;

    return-object v0
.end method

.method public final getCallStack()Ljava/lang/String;
    .locals 2

    .line 22309
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->callStack_:Ljava/lang/Object;

    .line 22310
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 22311
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 22313
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 22315
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v0

    .line 22316
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->callStack_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getCallStackBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    .line 22326
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->callStack_:Ljava/lang/Object;

    .line 22327
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 22328
    check-cast v0, Ljava/lang/String;

    .line 22329
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    .line 22331
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->callStack_:Ljava/lang/Object;

    return-object v0

    .line 22334
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final getColdStart()Z
    .locals 1

    .line 22878
    iget-boolean v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->coldStart_:Z

    return v0
.end method

.method public final getCrashCount()I
    .locals 1

    .line 22480
    iget v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->crashCount_:I

    return v0
.end method

.method public final getCrashThread()Ljava/lang/String;
    .locals 2

    .line 22273
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->crashThread_:Ljava/lang/Object;

    .line 22274
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 22275
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 22277
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 22279
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v0

    .line 22280
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->crashThread_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getCrashThreadBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    .line 22290
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->crashThread_:Ljava/lang/Object;

    .line 22291
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 22292
    check-cast v0, Ljava/lang/String;

    .line 22293
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    .line 22295
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->crashThread_:Ljava/lang/Object;

    return-object v0

    .line 22298
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final getCrashTime()J
    .locals 2

    .line 22155
    iget-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->crashTime_:J

    return-wide v0
.end method

.method public final getDefaultInstanceForType()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;
    .locals 1

    .line 26701
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->DEFAULT_INSTANCE:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/uqm/crashsight/protobuf/Message;
    .locals 1

    .line 21786
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getDefaultInstanceForType()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/uqm/crashsight/protobuf/MessageLite;
    .locals 1

    .line 21786
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getDefaultInstanceForType()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;

    move-result-object v0

    return-object v0
.end method

.method public final getDeviceBootTime()J
    .locals 2

    .line 22989
    iget-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->deviceBootTime_:J

    return-wide v0
.end method

.method public final getDeviceId()Ljava/lang/String;
    .locals 2

    .line 22526
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->deviceId_:Ljava/lang/Object;

    .line 22527
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 22528
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 22530
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 22532
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v0

    .line 22533
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->deviceId_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getDeviceIdBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    .line 22543
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->deviceId_:Ljava/lang/Object;

    .line 22544
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 22545
    check-cast v0, Ljava/lang/String;

    .line 22546
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    .line 22548
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->deviceId_:Ljava/lang/Object;

    return-object v0

    .line 22551
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final getEhType()I
    .locals 1

    .line 22999
    iget v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->ehType_:I

    return v0
.end method

.method public final getExpAddr()Ljava/lang/String;
    .locals 2

    .line 22237
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->expAddr_:Ljava/lang/Object;

    .line 22238
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 22239
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 22241
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 22243
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v0

    .line 22244
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->expAddr_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getExpAddrBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    .line 22254
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->expAddr_:Ljava/lang/Object;

    .line 22255
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 22256
    check-cast v0, Ljava/lang/String;

    .line 22257
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    .line 22259
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->expAddr_:Ljava/lang/Object;

    return-object v0

    .line 22262
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final getExpMessage()Ljava/lang/String;
    .locals 2

    .line 22201
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->expMessage_:Ljava/lang/Object;

    .line 22202
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 22203
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 22205
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 22207
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v0

    .line 22208
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->expMessage_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getExpMessageBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    .line 22218
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->expMessage_:Ljava/lang/Object;

    .line 22219
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 22220
    check-cast v0, Ljava/lang/String;

    .line 22221
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    .line 22223
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->expMessage_:Ljava/lang/Object;

    return-object v0

    .line 22226
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final getExpName()Ljava/lang/String;
    .locals 2

    .line 22165
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->expName_:Ljava/lang/Object;

    .line 22166
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 22167
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 22169
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 22171
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v0

    .line 22172
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->expName_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getExpNameBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    .line 22182
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->expName_:Ljava/lang/Object;

    .line 22183
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 22184
    check-cast v0, Ljava/lang/String;

    .line 22185
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    .line 22187
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->expName_:Ljava/lang/Object;

    return-object v0

    .line 22190
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final getExpuid()Ljava/lang/String;
    .locals 2

    .line 22421
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->expuid_:Ljava/lang/Object;

    .line 22422
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 22423
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 22425
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 22427
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v0

    .line 22428
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->expuid_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getExpuidBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    .line 22438
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->expuid_:Ljava/lang/Object;

    .line 22439
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 22440
    check-cast v0, Ljava/lang/String;

    .line 22441
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    .line 22443
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->expuid_:Ljava/lang/Object;

    return-object v0

    .line 22446
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final getGatewayIp()Ljava/lang/String;
    .locals 2

    .line 22842
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->gatewayIp_:Ljava/lang/Object;

    .line 22843
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 22844
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 22846
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 22848
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v0

    .line 22849
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->gatewayIp_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getGatewayIpBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    .line 22859
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->gatewayIp_:Ljava/lang/Object;

    .line 22860
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 22861
    check-cast v0, Ljava/lang/String;

    .line 22862
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    .line 22864
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->gatewayIp_:Ljava/lang/Object;

    return-object v0

    .line 22867
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final getLibInfos(I)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;
    .locals 1

    .line 22603
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->libInfos_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;

    return-object p1
.end method

.method public final getLibInfosCount()I
    .locals 1

    .line 22597
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->libInfos_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getLibInfosList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;",
            ">;"
        }
    .end annotation

    .line 22584
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->libInfos_:Ljava/util/List;

    return-object v0
.end method

.method public final getLibInfosOrBuilder(I)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfoOrBuilder;
    .locals 1

    .line 22610
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->libInfos_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfoOrBuilder;

    return-object p1
.end method

.method public final getLibInfosOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfoOrBuilder;",
            ">;"
        }
    .end annotation

    .line 22591
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->libInfos_:Ljava/util/List;

    return-object v0
.end method

.method public final getParserForType()Lcom/uqm/crashsight/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/uqm/crashsight/protobuf/Parser<",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;",
            ">;"
        }
    .end annotation

    .line 26696
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    return-object v0
.end method

.method public final getPidName()Ljava/lang/String;
    .locals 2

    .line 22953
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->pidName_:Ljava/lang/Object;

    .line 22954
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 22955
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 22957
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 22959
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v0

    .line 22960
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->pidName_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getPidNameBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    .line 22970
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->pidName_:Ljava/lang/Object;

    .line 22971
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 22972
    check-cast v0, Ljava/lang/String;

    .line 22973
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    .line 22975
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->pidName_:Ljava/lang/Object;

    return-object v0

    .line 22978
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final getPlugins(I)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;
    .locals 1

    .line 22638
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->plugins_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;

    return-object p1
.end method

.method public final getPluginsCount()I
    .locals 1

    .line 22632
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->plugins_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getPluginsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;",
            ">;"
        }
    .end annotation

    .line 22619
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->plugins_:Ljava/util/List;

    return-object v0
.end method

.method public final getPluginsOrBuilder(I)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfoOrBuilder;
    .locals 1

    .line 22645
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->plugins_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfoOrBuilder;

    return-object p1
.end method

.method public final getPluginsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfoOrBuilder;",
            ">;"
        }
    .end annotation

    .line 22626
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->plugins_:Ljava/util/List;

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 8

    .line 23114
    iget v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 23118
    :cond_0
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getTypeBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 23119
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->type_:Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-static {v2, v0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 23121
    :goto_0
    iget-wide v2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->crashTime_:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_2

    const/4 v6, 0x2

    .line 23123
    invoke-static {v6, v2, v3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->c(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 23125
    :cond_2
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getExpNameBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/uqm/crashsight/protobuf/ByteString;->c()Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x3

    .line 23126
    iget-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->expName_:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 23128
    :cond_3
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getExpMessageBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/uqm/crashsight/protobuf/ByteString;->c()Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v2, 0x4

    .line 23129
    iget-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->expMessage_:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 23131
    :cond_4
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getExpAddrBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/uqm/crashsight/protobuf/ByteString;->c()Z

    move-result v2

    if-nez v2, :cond_5

    const/4 v2, 0x5

    .line 23132
    iget-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->expAddr_:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 23134
    :cond_5
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getCrashThreadBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/uqm/crashsight/protobuf/ByteString;->c()Z

    move-result v2

    if-nez v2, :cond_6

    const/4 v2, 0x6

    .line 23135
    iget-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->crashThread_:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 23137
    :cond_6
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getCallStackBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/uqm/crashsight/protobuf/ByteString;->c()Z

    move-result v2

    if-nez v2, :cond_7

    const/4 v2, 0x7

    .line 23138
    iget-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->callStack_:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 23141
    :cond_7
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->internalGetAllStacks()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v2

    invoke-virtual {v2}, Lcom/uqm/crashsight/protobuf/MapField;->a()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 23143
    sget-object v6, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$AllStacksDefaultEntryHolder;->defaultEntry:Lcom/uqm/crashsight/protobuf/MapEntry;

    invoke-virtual {v6}, Lcom/uqm/crashsight/protobuf/MapEntry;->c()Lcom/uqm/crashsight/protobuf/MapEntry$Builder;

    move-result-object v6

    .line 23144
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/uqm/crashsight/protobuf/MapEntry$Builder;->a(Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/MapEntry$Builder;

    move-result-object v6

    .line 23145
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/uqm/crashsight/protobuf/MapEntry$Builder;->b(Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/MapEntry$Builder;

    move-result-object v3

    .line 23146
    invoke-virtual {v3}, Lcom/uqm/crashsight/protobuf/MapEntry$Builder;->a()Lcom/uqm/crashsight/protobuf/MapEntry;

    move-result-object v3

    const/16 v6, 0x8

    .line 23148
    invoke-static {v6, v3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->c(ILcom/uqm/crashsight/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_1

    .line 23150
    :cond_8
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getExpuidBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/uqm/crashsight/protobuf/ByteString;->c()Z

    move-result v2

    if-nez v2, :cond_9

    const/16 v2, 0x9

    .line 23151
    iget-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->expuid_:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 23153
    :cond_9
    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->session_:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;

    if-eqz v2, :cond_a

    const/16 v2, 0xa

    .line 23155
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getSession()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->c(ILcom/uqm/crashsight/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 23157
    :cond_a
    iget v2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->crashCount_:I

    if-eqz v2, :cond_b

    const/16 v3, 0xb

    .line 23159
    invoke-static {v3, v2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->d(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 23161
    :cond_b
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getUseridBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/uqm/crashsight/protobuf/ByteString;->c()Z

    move-result v2

    if-nez v2, :cond_c

    const/16 v2, 0xc

    .line 23162
    iget-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->userid_:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 23164
    :cond_c
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getDeviceIdBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/uqm/crashsight/protobuf/ByteString;->c()Z

    move-result v2

    if-nez v2, :cond_d

    const/16 v2, 0xd

    .line 23165
    iget-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->deviceId_:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 23167
    :cond_d
    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->appInfo_:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;

    if-eqz v2, :cond_e

    const/16 v2, 0xe

    .line 23169
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getAppInfo()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->c(ILcom/uqm/crashsight/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_e
    const/4 v2, 0x0

    .line 23171
    :goto_2
    iget-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->libInfos_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_f

    .line 23172
    iget-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->libInfos_:Ljava/util/List;

    .line 23173
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/uqm/crashsight/protobuf/MessageLite;

    const/16 v6, 0xf

    invoke-static {v6, v3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->c(ILcom/uqm/crashsight/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_f
    const/4 v2, 0x0

    .line 23175
    :goto_3
    iget-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->plugins_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_10

    .line 23176
    iget-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->plugins_:Ljava/util/List;

    .line 23177
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/uqm/crashsight/protobuf/MessageLite;

    const/16 v6, 0x10

    invoke-static {v6, v3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->c(ILcom/uqm/crashsight/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_10
    const/4 v2, 0x0

    .line 23179
    :goto_4
    iget-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->attaches_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_11

    .line 23180
    iget-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->attaches_:Ljava/util/List;

    .line 23181
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/uqm/crashsight/protobuf/MessageLite;

    const/16 v6, 0x11

    invoke-static {v6, v3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->c(ILcom/uqm/crashsight/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 23184
    :cond_11
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->internalGetValueMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v2

    invoke-virtual {v2}, Lcom/uqm/crashsight/protobuf/MapField;->a()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 23186
    sget-object v6, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$ValueMapDefaultEntryHolder;->defaultEntry:Lcom/uqm/crashsight/protobuf/MapEntry;

    invoke-virtual {v6}, Lcom/uqm/crashsight/protobuf/MapEntry;->c()Lcom/uqm/crashsight/protobuf/MapEntry$Builder;

    move-result-object v6

    .line 23187
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/uqm/crashsight/protobuf/MapEntry$Builder;->a(Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/MapEntry$Builder;

    move-result-object v6

    .line 23188
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/uqm/crashsight/protobuf/MapEntry$Builder;->b(Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/MapEntry$Builder;

    move-result-object v3

    .line 23189
    invoke-virtual {v3}, Lcom/uqm/crashsight/protobuf/MapEntry$Builder;->a()Lcom/uqm/crashsight/protobuf/MapEntry;

    move-result-object v3

    const/16 v6, 0x12

    .line 23191
    invoke-static {v6, v3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->c(ILcom/uqm/crashsight/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_5

    .line 23194
    :cond_12
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->internalGetUserMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v2

    invoke-virtual {v2}, Lcom/uqm/crashsight/protobuf/MapField;->a()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 23196
    sget-object v6, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$UserMapDefaultEntryHolder;->defaultEntry:Lcom/uqm/crashsight/protobuf/MapEntry;

    invoke-virtual {v6}, Lcom/uqm/crashsight/protobuf/MapEntry;->c()Lcom/uqm/crashsight/protobuf/MapEntry$Builder;

    move-result-object v6

    .line 23197
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/uqm/crashsight/protobuf/MapEntry$Builder;->a(Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/MapEntry$Builder;

    move-result-object v6

    .line 23198
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/uqm/crashsight/protobuf/MapEntry$Builder;->b(Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/MapEntry$Builder;

    move-result-object v3

    .line 23199
    invoke-virtual {v3}, Lcom/uqm/crashsight/protobuf/MapEntry$Builder;->a()Lcom/uqm/crashsight/protobuf/MapEntry;

    move-result-object v3

    const/16 v6, 0x13

    .line 23201
    invoke-static {v6, v3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->c(ILcom/uqm/crashsight/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_6

    .line 23203
    :cond_13
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getGatewayIpBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/uqm/crashsight/protobuf/ByteString;->c()Z

    move-result v2

    if-nez v2, :cond_14

    const/16 v2, 0x14

    .line 23204
    iget-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->gatewayIp_:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 23206
    :cond_14
    iget-boolean v2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->coldStart_:Z

    if-eqz v2, :cond_15

    const/16 v3, 0x15

    .line 23208
    invoke-static {v3, v2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->b(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 23210
    :cond_15
    iget-wide v2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->stackBeginAddress_:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_16

    const/16 v6, 0x16

    .line 23212
    invoke-static {v6, v2, v3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->d(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 23214
    :cond_16
    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->stackData_:Lcom/uqm/crashsight/protobuf/ByteString;

    invoke-virtual {v2}, Lcom/uqm/crashsight/protobuf/ByteString;->c()Z

    move-result v2

    if-nez v2, :cond_17

    const/16 v2, 0x17

    .line 23215
    iget-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->stackData_:Lcom/uqm/crashsight/protobuf/ByteString;

    .line 23216
    invoke-static {v2, v3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->c(ILcom/uqm/crashsight/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 23218
    :cond_17
    iget-boolean v2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->serverSymbolize_:Z

    if-eqz v2, :cond_18

    const/16 v3, 0x18

    .line 23220
    invoke-static {v3, v2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->b(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 23222
    :cond_18
    :goto_7
    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->textCodeFragments_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_19

    .line 23223
    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->textCodeFragments_:Ljava/util/List;

    .line 23224
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/uqm/crashsight/protobuf/MessageLite;

    const/16 v3, 0x19

    invoke-static {v3, v2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->c(ILcom/uqm/crashsight/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 23226
    :cond_19
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getPidNameBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/ByteString;->c()Z

    move-result v1

    if-nez v1, :cond_1a

    const/16 v1, 0x1a

    .line 23227
    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->pidName_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 23229
    :cond_1a
    iget-wide v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->deviceBootTime_:J

    cmp-long v3, v1, v4

    if-eqz v3, :cond_1b

    const/16 v3, 0x1b

    .line 23231
    invoke-static {v3, v1, v2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->c(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 23233
    :cond_1b
    iget v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->ehType_:I

    if-eqz v1, :cond_1c

    const/16 v2, 0x1c

    .line 23235
    invoke-static {v2, v1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->d(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 23237
    :cond_1c
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 23238
    iput v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->memoizedSize:I

    return v0
.end method

.method public final getServerSymbolize()Z
    .locals 1

    .line 22908
    iget-boolean v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->serverSymbolize_:Z

    return v0
.end method

.method public final getSession()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;
    .locals 1

    .line 22464
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->session_:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;->getDefaultInstance()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final getSessionOrBuilder()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSessionOrBuilder;
    .locals 1

    .line 22470
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getSession()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;

    move-result-object v0

    return-object v0
.end method

.method public final getStackBeginAddress()J
    .locals 2

    .line 22888
    iget-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->stackBeginAddress_:J

    return-wide v0
.end method

.method public final getStackData()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 1

    .line 22898
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->stackData_:Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final getTextCodeFragments(I)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData;
    .locals 1

    .line 22936
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->textCodeFragments_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData;

    return-object p1
.end method

.method public final getTextCodeFragmentsCount()I
    .locals 1

    .line 22930
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->textCodeFragments_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getTextCodeFragmentsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData;",
            ">;"
        }
    .end annotation

    .line 22917
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->textCodeFragments_:Ljava/util/List;

    return-object v0
.end method

.method public final getTextCodeFragmentsOrBuilder(I)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryDataOrBuilder;
    .locals 1

    .line 22943
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->textCodeFragments_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryDataOrBuilder;

    return-object p1
.end method

.method public final getTextCodeFragmentsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryDataOrBuilder;",
            ">;"
        }
    .end annotation

    .line 22924
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->textCodeFragments_:Ljava/util/List;

    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 2

    .line 22119
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->type_:Ljava/lang/Object;

    .line 22120
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 22121
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 22123
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 22125
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v0

    .line 22126
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->type_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getTypeBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    .line 22136
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->type_:Ljava/lang/Object;

    .line 22137
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 22138
    check-cast v0, Ljava/lang/String;

    .line 22139
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    .line 22141
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->type_:Ljava/lang/Object;

    return-object v0

    .line 22144
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;
    .locals 1

    .line 21824
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public final getUserMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 22799
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getUserMapMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getUserMapCount()I
    .locals 1

    .line 22783
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->internalGetUserMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public final getUserMapMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 22806
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->internalGetUserMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->a()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getUserMapOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 22815
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22817
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->internalGetUserMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->a()Ljava/util/Map;

    move-result-object v0

    .line 22818
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    return-object p2
.end method

.method public final getUserMapOrThrow(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 22826
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22828
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->internalGetUserMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->a()Ljava/util/Map;

    move-result-object v0

    .line 22829
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 22832
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 22830
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final getUserid()Ljava/lang/String;
    .locals 2

    .line 22490
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->userid_:Ljava/lang/Object;

    .line 22491
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 22492
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 22494
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 22496
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v0

    .line 22497
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->userid_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getUseridBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    .line 22507
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->userid_:Ljava/lang/Object;

    .line 22508
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 22509
    check-cast v0, Ljava/lang/String;

    .line 22510
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    .line 22512
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->userid_:Ljava/lang/Object;

    return-object v0

    .line 22515
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final getValueMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 22723
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getValueMapMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getValueMapCount()I
    .locals 1

    .line 22707
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->internalGetValueMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public final getValueMapMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 22730
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->internalGetValueMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->a()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getValueMapOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 22739
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22741
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->internalGetValueMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->a()Ljava/util/Map;

    move-result-object v0

    .line 22742
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    return-object p2
.end method

.method public final getValueMapOrThrow(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 22750
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22752
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->internalGetValueMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->a()Ljava/util/Map;

    move-result-object v0

    .line 22753
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 22756
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 22754
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final hasAppInfo()Z
    .locals 1

    .line 22562
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->appInfo_:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasSession()Z
    .locals 1

    .line 22457
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->session_:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 23320
    iget v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 23321
    iget v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->memoizedHashCode:I

    return v0

    .line 23324
    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getDescriptor()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 23326
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 23329
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getCrashTime()J

    move-result-wide v1

    .line 23328
    invoke-static {v1, v2}, Lcom/uqm/crashsight/protobuf/Internal;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 23331
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getExpName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 23333
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getExpMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    .line 23335
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getExpAddr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x35

    .line 23337
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getCrashThread()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x7

    mul-int/lit8 v0, v0, 0x35

    .line 23339
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getCallStack()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 23340
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->internalGetAllStacks()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/MapField;->a()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x35

    .line 23342
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->internalGetAllStacks()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/MapField;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x9

    mul-int/lit8 v0, v0, 0x35

    .line 23345
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getExpuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 23346
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->hasSession()Z

    move-result v1

    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xa

    mul-int/lit8 v0, v0, 0x35

    .line 23348
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getSession()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xb

    mul-int/lit8 v0, v0, 0x35

    .line 23351
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getCrashCount()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xc

    mul-int/lit8 v0, v0, 0x35

    .line 23353
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getUserid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xd

    mul-int/lit8 v0, v0, 0x35

    .line 23355
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 23356
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->hasAppInfo()Z

    move-result v1

    if-eqz v1, :cond_3

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xe

    mul-int/lit8 v0, v0, 0x35

    .line 23358
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getAppInfo()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 23360
    :cond_3
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getLibInfosCount()I

    move-result v1

    if-lez v1, :cond_4

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xf

    mul-int/lit8 v0, v0, 0x35

    .line 23362
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getLibInfosList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 23364
    :cond_4
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getPluginsCount()I

    move-result v1

    if-lez v1, :cond_5

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x10

    mul-int/lit8 v0, v0, 0x35

    .line 23366
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getPluginsList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 23368
    :cond_5
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getAttachesCount()I

    move-result v1

    if-lez v1, :cond_6

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x11

    mul-int/lit8 v0, v0, 0x35

    .line 23370
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getAttachesList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 23372
    :cond_6
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->internalGetValueMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/MapField;->a()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x12

    mul-int/lit8 v0, v0, 0x35

    .line 23374
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->internalGetValueMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/MapField;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 23376
    :cond_7
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->internalGetUserMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/MapField;->a()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x13

    mul-int/lit8 v0, v0, 0x35

    .line 23378
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->internalGetUserMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/MapField;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x14

    mul-int/lit8 v0, v0, 0x35

    .line 23381
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getGatewayIp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x15

    mul-int/lit8 v0, v0, 0x35

    .line 23384
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getColdStart()Z

    move-result v1

    .line 23383
    invoke-static {v1}, Lcom/uqm/crashsight/protobuf/Internal;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x16

    mul-int/lit8 v0, v0, 0x35

    .line 23387
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getStackBeginAddress()J

    move-result-wide v1

    .line 23386
    invoke-static {v1, v2}, Lcom/uqm/crashsight/protobuf/Internal;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x17

    mul-int/lit8 v0, v0, 0x35

    .line 23389
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getStackData()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/ByteString;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x18

    mul-int/lit8 v0, v0, 0x35

    .line 23392
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getServerSymbolize()Z

    move-result v1

    .line 23391
    invoke-static {v1}, Lcom/uqm/crashsight/protobuf/Internal;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 23393
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getTextCodeFragmentsCount()I

    move-result v1

    if-lez v1, :cond_9

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x19

    mul-int/lit8 v0, v0, 0x35

    .line 23395
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getTextCodeFragmentsList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1a

    mul-int/lit8 v0, v0, 0x35

    .line 23398
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getPidName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1b

    mul-int/lit8 v0, v0, 0x35

    .line 23401
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getDeviceBootTime()J

    move-result-wide v1

    .line 23400
    invoke-static {v1, v2}, Lcom/uqm/crashsight/protobuf/Internal;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1c

    mul-int/lit8 v0, v0, 0x35

    .line 23403
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getEhType()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1d

    .line 23404
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 23405
    iput v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->memoizedHashCode:I

    return v0
.end method

.method protected final internalGetFieldAccessorTable()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 22107
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->access$31100()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;

    const-class v2, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    .line 22108
    invoke-virtual {v0, v1, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method protected final internalGetMapField(I)Lcom/uqm/crashsight/protobuf/MapField;
    .locals 3

    const/16 v0, 0x8

    if-eq p1, v0, :cond_2

    const/16 v0, 0x12

    if-eq p1, v0, :cond_1

    const/16 v0, 0x13

    if-ne p1, v0, :cond_0

    .line 22098
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->internalGetUserMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object p1

    return-object p1

    .line 22100
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid map field number: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 22096
    :cond_1
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->internalGetValueMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object p1

    return-object p1

    .line 22094
    :cond_2
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->internalGetAllStacks()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object p1

    return-object p1
.end method

.method public final isInitialized()Z
    .locals 2

    .line 23005
    iget-byte v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 23009
    :cond_1
    iput-byte v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->memoizedIsInitialized:B

    return v1
.end method

.method public final newBuilderForType()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;
    .locals 1

    .line 23480
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->newBuilder()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newBuilderForType(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;
    .locals 2

    .line 23496
    new-instance v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;Lcom/uqm/crashsight/crashreport/common/info/SightPkg$1;)V

    return-object v0
.end method

.method public final bridge synthetic newBuilderForType()Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 1

    .line 21786
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->newBuilderForType()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic newBuilderForType(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    .line 21786
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->newBuilderForType(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic newBuilderForType()Lcom/uqm/crashsight/protobuf/MessageLite$Builder;
    .locals 1

    .line 21786
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->newBuilderForType()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newInstance(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 21818
    new-instance p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;

    invoke-direct {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;-><init>()V

    return-object p1
.end method

.method public final toBuilder()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;
    .locals 2

    .line 23489
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->DEFAULT_INSTANCE:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    invoke-direct {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;-><init>(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$1;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    invoke-direct {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;-><init>(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$1;)V

    .line 23490
    invoke-virtual {v0, p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->mergeFrom(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 1

    .line 21786
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->toBuilder()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/uqm/crashsight/protobuf/MessageLite$Builder;
    .locals 1

    .line 21786
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->toBuilder()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/uqm/crashsight/protobuf/CodedOutputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23016
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getTypeBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 23017
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->type_:Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->writeString(Lcom/uqm/crashsight/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 23019
    :cond_0
    iget-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->crashTime_:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    const/4 v4, 0x2

    .line 27256
    invoke-virtual {p1, v4, v0, v1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(IJ)V

    .line 23022
    :cond_1
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getExpNameBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->c()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x3

    .line 23023
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->expName_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->writeString(Lcom/uqm/crashsight/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 23025
    :cond_2
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getExpMessageBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->c()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x4

    .line 23026
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->expMessage_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->writeString(Lcom/uqm/crashsight/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 23028
    :cond_3
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getExpAddrBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->c()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x5

    .line 23029
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->expAddr_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->writeString(Lcom/uqm/crashsight/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 23031
    :cond_4
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getCrashThreadBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->c()Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x6

    .line 23032
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->crashThread_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->writeString(Lcom/uqm/crashsight/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 23034
    :cond_5
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getCallStackBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->c()Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x7

    .line 23035
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->callStack_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->writeString(Lcom/uqm/crashsight/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 23040
    :cond_6
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->internalGetAllStacks()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    sget-object v1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$AllStacksDefaultEntryHolder;->defaultEntry:Lcom/uqm/crashsight/protobuf/MapEntry;

    const/16 v4, 0x8

    .line 23038
    invoke-static {p1, v0, v1, v4}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->serializeStringMapTo(Lcom/uqm/crashsight/protobuf/CodedOutputStream;Lcom/uqm/crashsight/protobuf/MapField;Lcom/uqm/crashsight/protobuf/MapEntry;I)V

    .line 23043
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getExpuidBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->c()Z

    move-result v0

    if-nez v0, :cond_7

    const/16 v0, 0x9

    .line 23044
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->expuid_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->writeString(Lcom/uqm/crashsight/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 23046
    :cond_7
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->session_:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;

    if-eqz v0, :cond_8

    const/16 v0, 0xa

    .line 23047
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getSession()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(ILcom/uqm/crashsight/protobuf/MessageLite;)V

    .line 23049
    :cond_8
    iget v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->crashCount_:I

    if-eqz v0, :cond_9

    const/16 v1, 0xb

    .line 23050
    invoke-virtual {p1, v1, v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->b(II)V

    .line 23052
    :cond_9
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getUseridBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->c()Z

    move-result v0

    if-nez v0, :cond_a

    const/16 v0, 0xc

    .line 23053
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->userid_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->writeString(Lcom/uqm/crashsight/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 23055
    :cond_a
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getDeviceIdBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->c()Z

    move-result v0

    if-nez v0, :cond_b

    const/16 v0, 0xd

    .line 23056
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->deviceId_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->writeString(Lcom/uqm/crashsight/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 23058
    :cond_b
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->appInfo_:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;

    if-eqz v0, :cond_c

    const/16 v0, 0xe

    .line 23059
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getAppInfo()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(ILcom/uqm/crashsight/protobuf/MessageLite;)V

    :cond_c
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 23061
    :goto_0
    iget-object v4, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->libInfos_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_d

    .line 23062
    iget-object v4, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->libInfos_:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/uqm/crashsight/protobuf/MessageLite;

    const/16 v5, 0xf

    invoke-virtual {p1, v5, v4}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(ILcom/uqm/crashsight/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_d
    const/4 v1, 0x0

    .line 23064
    :goto_1
    iget-object v4, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->plugins_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_e

    .line 23065
    iget-object v4, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->plugins_:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/uqm/crashsight/protobuf/MessageLite;

    const/16 v5, 0x10

    invoke-virtual {p1, v5, v4}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(ILcom/uqm/crashsight/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_e
    const/4 v1, 0x0

    .line 23067
    :goto_2
    iget-object v4, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->attaches_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_f

    .line 23068
    iget-object v4, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->attaches_:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/uqm/crashsight/protobuf/MessageLite;

    const/16 v5, 0x11

    invoke-virtual {p1, v5, v4}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(ILcom/uqm/crashsight/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 23073
    :cond_f
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->internalGetValueMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v1

    sget-object v4, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$ValueMapDefaultEntryHolder;->defaultEntry:Lcom/uqm/crashsight/protobuf/MapEntry;

    const/16 v5, 0x12

    .line 23071
    invoke-static {p1, v1, v4, v5}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->serializeStringMapTo(Lcom/uqm/crashsight/protobuf/CodedOutputStream;Lcom/uqm/crashsight/protobuf/MapField;Lcom/uqm/crashsight/protobuf/MapEntry;I)V

    .line 23079
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->internalGetUserMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v1

    sget-object v4, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$UserMapDefaultEntryHolder;->defaultEntry:Lcom/uqm/crashsight/protobuf/MapEntry;

    const/16 v5, 0x13

    .line 23077
    invoke-static {p1, v1, v4, v5}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->serializeStringMapTo(Lcom/uqm/crashsight/protobuf/CodedOutputStream;Lcom/uqm/crashsight/protobuf/MapField;Lcom/uqm/crashsight/protobuf/MapEntry;I)V

    .line 23082
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getGatewayIpBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/ByteString;->c()Z

    move-result v1

    if-nez v1, :cond_10

    const/16 v1, 0x14

    .line 23083
    iget-object v4, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->gatewayIp_:Ljava/lang/Object;

    invoke-static {p1, v1, v4}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->writeString(Lcom/uqm/crashsight/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 23085
    :cond_10
    iget-boolean v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->coldStart_:Z

    if-eqz v1, :cond_11

    const/16 v4, 0x15

    .line 23086
    invoke-virtual {p1, v4, v1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(IZ)V

    .line 23088
    :cond_11
    iget-wide v4, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->stackBeginAddress_:J

    cmp-long v1, v4, v2

    if-eqz v1, :cond_12

    const/16 v1, 0x16

    .line 23089
    invoke-virtual {p1, v1, v4, v5}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(IJ)V

    .line 23091
    :cond_12
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->stackData_:Lcom/uqm/crashsight/protobuf/ByteString;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/ByteString;->c()Z

    move-result v1

    if-nez v1, :cond_13

    const/16 v1, 0x17

    .line 23092
    iget-object v4, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->stackData_:Lcom/uqm/crashsight/protobuf/ByteString;

    invoke-virtual {p1, v1, v4}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(ILcom/uqm/crashsight/protobuf/ByteString;)V

    .line 23094
    :cond_13
    iget-boolean v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->serverSymbolize_:Z

    if-eqz v1, :cond_14

    const/16 v4, 0x18

    .line 23095
    invoke-virtual {p1, v4, v1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(IZ)V

    .line 23097
    :cond_14
    :goto_3
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->textCodeFragments_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_15

    .line 23098
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->textCodeFragments_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uqm/crashsight/protobuf/MessageLite;

    const/16 v4, 0x19

    invoke-virtual {p1, v4, v1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(ILcom/uqm/crashsight/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 23100
    :cond_15
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getPidNameBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->c()Z

    move-result v0

    if-nez v0, :cond_16

    const/16 v0, 0x1a

    .line 23101
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->pidName_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->writeString(Lcom/uqm/crashsight/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 23103
    :cond_16
    iget-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->deviceBootTime_:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_17

    const/16 v2, 0x1b

    .line 28256
    invoke-virtual {p1, v2, v0, v1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(IJ)V

    .line 23106
    :cond_17
    iget v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->ehType_:I

    if-eqz v0, :cond_18

    const/16 v1, 0x1c

    .line 23107
    invoke-virtual {p1, v1, v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->b(II)V

    .line 23109
    :cond_18
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->writeTo(Lcom/uqm/crashsight/protobuf/CodedOutputStream;)V

    return-void
.end method
