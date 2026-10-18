.class public final Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;
.super Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;
.source "CrashSight"

# interfaces
.implements Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategyOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/crashreport/common/info/SightPkg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RqdStrategy"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;,
        Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$ValueMapDefaultEntryHolder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;

.field public static final ENABLEQUERY_FIELD_NUMBER:I = 0x3

.field public static final ENABLEUSERINFO_FIELD_NUMBER:I = 0x2

.field public static final ENABLE_FIELD_NUMBER:I = 0x1

.field public static final EVENTRECORDCOUNT_FIELD_NUMBER:I = 0xb

.field public static final EVENTTIMEINTERVAL_FIELD_NUMBER:I = 0xc

.field public static final EXPURL_FIELD_NUMBER:I = 0x5

.field public static final HTTPSEXPURL_FIELD_NUMBER:I = 0xa

.field public static final HTTPSURL_FIELD_NUMBER:I = 0x9

.field private static final PARSER:Lcom/uqm/crashsight/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/uqm/crashsight/protobuf/Parser<",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;",
            ">;"
        }
    .end annotation
.end field

.field public static final SECURITY_FIELD_NUMBER:I = 0x6

.field public static final STRATEGYLASTUPDATETIME_FIELD_NUMBER:I = 0x8

.field public static final URL_FIELD_NUMBER:I = 0x4

.field public static final VALUEMAP_FIELD_NUMBER:I = 0x7

.field private static final serialVersionUID:J


# instance fields
.field private enableQuery_:Z

.field private enableUserInfo_:Z

.field private enable_:Z

.field private eventRecordCount_:I

.field private eventTimeInterval_:I

.field private volatile expUrl_:Ljava/lang/Object;

.field private volatile httpsExpUrl_:Ljava/lang/Object;

.field private volatile httpsUrl_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private security_:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;

.field private strategylastUpdateTime_:J

.field private volatile url_:Ljava/lang/Object;

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

    .line 17663
    new-instance v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;

    invoke-direct {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;-><init>()V

    sput-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->DEFAULT_INSTANCE:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;

    .line 17671
    new-instance v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$1;

    invoke-direct {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$1;-><init>()V

    sput-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 15914
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 16379
    iput-byte v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->memoizedIsInitialized:B

    .line 15915
    const-string v0, ""

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->url_:Ljava/lang/Object;

    .line 15916
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->expUrl_:Ljava/lang/Object;

    .line 15917
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->httpsUrl_:Ljava/lang/Object;

    .line 15918
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->httpsExpUrl_:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 15937
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;-><init>()V

    .line 15939
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15943
    invoke-static {}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_3

    .line 15947
    :try_start_0
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a()I

    move-result v3

    const/4 v4, 0x1

    sparse-switch v3, :sswitch_data_0

    .line 16033
    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->parseUnknownField(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    goto/16 :goto_3

    .line 16029
    :sswitch_0
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->f()I

    move-result v3

    iput v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->eventTimeInterval_:I

    goto :goto_0

    .line 16024
    :sswitch_1
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->f()I

    move-result v3

    iput v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->eventRecordCount_:I

    goto :goto_0

    .line 16017
    :sswitch_2
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->k()Ljava/lang/String;

    move-result-object v3

    .line 16019
    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->httpsExpUrl_:Ljava/lang/Object;

    goto :goto_0

    .line 16011
    :sswitch_3
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->k()Ljava/lang/String;

    move-result-object v3

    .line 16013
    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->httpsUrl_:Ljava/lang/Object;

    goto :goto_0

    .line 16007
    :sswitch_4
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->e()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->strategylastUpdateTime_:J

    goto :goto_0

    :sswitch_5
    if-nez v2, :cond_1

    .line 15994
    sget-object v2, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$ValueMapDefaultEntryHolder;->defaultEntry:Lcom/uqm/crashsight/protobuf/MapEntry;

    invoke-static {v2}, Lcom/uqm/crashsight/protobuf/MapField;->b(Lcom/uqm/crashsight/protobuf/MapEntry;)Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v2

    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->valueMap_:Lcom/uqm/crashsight/protobuf/MapField;

    const/4 v2, 0x1

    .line 15999
    :cond_1
    sget-object v3, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$ValueMapDefaultEntryHolder;->defaultEntry:Lcom/uqm/crashsight/protobuf/MapEntry;

    .line 16000
    invoke-virtual {v3}, Lcom/uqm/crashsight/protobuf/MapEntry;->getParserForType()Lcom/uqm/crashsight/protobuf/Parser;

    move-result-object v3

    .line 15999
    invoke-virtual {p1, v3, p2}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a(Lcom/uqm/crashsight/protobuf/Parser;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/uqm/crashsight/protobuf/MapEntry;

    .line 16001
    iget-object v4, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->valueMap_:Lcom/uqm/crashsight/protobuf/MapField;

    invoke-virtual {v4}, Lcom/uqm/crashsight/protobuf/MapField;->b()Ljava/util/Map;

    move-result-object v4

    .line 16002
    invoke-virtual {v3}, Lcom/uqm/crashsight/protobuf/MapEntry;->a()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3}, Lcom/uqm/crashsight/protobuf/MapEntry;->b()Ljava/lang/Object;

    move-result-object v3

    .line 16001
    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 15981
    :sswitch_6
    iget-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->security_:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;

    if-eqz v3, :cond_2

    .line 15982
    invoke-virtual {v3}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;->toBuilder()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity$Builder;

    move-result-object v3

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    .line 15984
    :goto_1
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;->parser()Lcom/uqm/crashsight/protobuf/Parser;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a(Lcom/uqm/crashsight/protobuf/Parser;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/MessageLite;

    move-result-object v4

    check-cast v4, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;

    iput-object v4, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->security_:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;

    if-eqz v3, :cond_0

    .line 15986
    invoke-virtual {v3, v4}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity$Builder;->mergeFrom(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity$Builder;

    .line 15987
    invoke-virtual {v3}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity$Builder;->buildPartial()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;

    move-result-object v3

    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->security_:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;

    goto :goto_0

    .line 15974
    :sswitch_7
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->k()Ljava/lang/String;

    move-result-object v3

    .line 15976
    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->expUrl_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 15968
    :sswitch_8
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->k()Ljava/lang/String;

    move-result-object v3

    .line 15970
    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->url_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 15964
    :sswitch_9
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->i()Z

    move-result v3

    iput-boolean v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->enableQuery_:Z

    goto/16 :goto_0

    .line 15959
    :sswitch_a
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->i()Z

    move-result v3

    iput-boolean v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->enableUserInfo_:Z

    goto/16 :goto_0

    .line 15954
    :sswitch_b
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->i()Z

    move-result v3

    iput-boolean v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->enable_:Z
    :try_end_0
    .catch Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_2
    :sswitch_c
    const/4 v1, 0x1

    goto/16 :goto_0

    :goto_3
    if-nez v3, :cond_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    .line 16044
    :try_start_1
    new-instance p2, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 16045
    invoke-virtual {p2, p0}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->a(Lcom/uqm/crashsight/protobuf/MessageLite;)Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 16042
    invoke-virtual {p1, p0}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->a(Lcom/uqm/crashsight/protobuf/MessageLite;)Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16047
    :goto_4
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    .line 16048
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->makeExtensionsImmutable()V

    .line 16049
    throw p1

    .line 16047
    :cond_3
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    .line 16048
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->makeExtensionsImmutable()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_c
        0x8 -> :sswitch_b
        0x10 -> :sswitch_a
        0x18 -> :sswitch_9
        0x22 -> :sswitch_8
        0x2a -> :sswitch_7
        0x32 -> :sswitch_6
        0x3a -> :sswitch_5
        0x40 -> :sswitch_4
        0x4a -> :sswitch_3
        0x52 -> :sswitch_2
        0x58 -> :sswitch_1
        0x60 -> :sswitch_0
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;Lcom/uqm/crashsight/crashreport/common/info/SightPkg$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 15905
    invoke-direct {p0, p1, p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;-><init>(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)V

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

    .line 15912
    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 16379
    iput-byte p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;Lcom/uqm/crashsight/crashreport/common/info/SightPkg$1;)V
    .locals 0

    .line 15905
    invoke-direct {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$22700()Z
    .locals 1

    .line 15905
    sget-boolean v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$22902(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;Z)Z
    .locals 0

    .line 15905
    iput-boolean p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->enable_:Z

    return p1
.end method

.method static synthetic access$23002(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;Z)Z
    .locals 0

    .line 15905
    iput-boolean p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->enableUserInfo_:Z

    return p1
.end method

.method static synthetic access$23102(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;Z)Z
    .locals 0

    .line 15905
    iput-boolean p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->enableQuery_:Z

    return p1
.end method

.method static synthetic access$23200(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;)Ljava/lang/Object;
    .locals 0

    .line 15905
    iget-object p0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->url_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$23202(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 15905
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->url_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$23300(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;)Ljava/lang/Object;
    .locals 0

    .line 15905
    iget-object p0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->expUrl_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$23302(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 15905
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->expUrl_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$23402(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;
    .locals 0

    .line 15905
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->security_:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;

    return-object p1
.end method

.method static synthetic access$23500(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;)Lcom/uqm/crashsight/protobuf/MapField;
    .locals 0

    .line 15905
    iget-object p0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->valueMap_:Lcom/uqm/crashsight/protobuf/MapField;

    return-object p0
.end method

.method static synthetic access$23502(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;Lcom/uqm/crashsight/protobuf/MapField;)Lcom/uqm/crashsight/protobuf/MapField;
    .locals 0

    .line 15905
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->valueMap_:Lcom/uqm/crashsight/protobuf/MapField;

    return-object p1
.end method

.method static synthetic access$23602(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;J)J
    .locals 0

    .line 15905
    iput-wide p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->strategylastUpdateTime_:J

    return-wide p1
.end method

.method static synthetic access$23700(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;)Ljava/lang/Object;
    .locals 0

    .line 15905
    iget-object p0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->httpsUrl_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$23702(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 15905
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->httpsUrl_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$23800(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;)Ljava/lang/Object;
    .locals 0

    .line 15905
    iget-object p0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->httpsExpUrl_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$23802(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 15905
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->httpsExpUrl_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$23902(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;I)I
    .locals 0

    .line 15905
    iput p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->eventRecordCount_:I

    return p1
.end method

.method static synthetic access$24002(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;I)I
    .locals 0

    .line 15905
    iput p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->eventTimeInterval_:I

    return p1
.end method

.method static synthetic access$24100(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;)Lcom/uqm/crashsight/protobuf/MapField;
    .locals 0

    .line 15905
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->internalGetValueMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$24200(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;)Lcom/uqm/crashsight/protobuf/UnknownFieldSet;
    .locals 0

    .line 15905
    iget-object p0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method static synthetic access$24300()Lcom/uqm/crashsight/protobuf/Parser;
    .locals 1

    .line 15905
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    return-object v0
.end method

.method static synthetic access$24400(Lcom/uqm/crashsight/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 15905
    invoke-static {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->checkByteStringIsUtf8(Lcom/uqm/crashsight/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$24500(Lcom/uqm/crashsight/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 15905
    invoke-static {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->checkByteStringIsUtf8(Lcom/uqm/crashsight/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$24600(Lcom/uqm/crashsight/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 15905
    invoke-static {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->checkByteStringIsUtf8(Lcom/uqm/crashsight/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$24700(Lcom/uqm/crashsight/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 15905
    invoke-static {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->checkByteStringIsUtf8(Lcom/uqm/crashsight/protobuf/ByteString;)V

    return-void
.end method

.method public static getDefaultInstance()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;
    .locals 1

    .line 17667
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->DEFAULT_INSTANCE:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 16053
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->access$22200()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move-result-object v0

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

    .line 16217
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->valueMap_:Lcom/uqm/crashsight/protobuf/MapField;

    if-nez v0, :cond_0

    .line 16218
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$ValueMapDefaultEntryHolder;->defaultEntry:Lcom/uqm/crashsight/protobuf/MapEntry;

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/MapField;->a(Lcom/uqm/crashsight/protobuf/MapEntry;)Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static newBuilder()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;
    .locals 1

    .line 16654
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->DEFAULT_INSTANCE:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->toBuilder()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;
    .locals 1

    .line 16657
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->DEFAULT_INSTANCE:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->toBuilder()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->mergeFrom(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 16627
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    .line 16628
    invoke-static {v0, p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/uqm/crashsight/protobuf/Parser;Ljava/io/InputStream;)Lcom/uqm/crashsight/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 16634
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    .line 16635
    invoke-static {v0, p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/uqm/crashsight/protobuf/Parser;Ljava/io/InputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;

    return-object p0
.end method

.method public static parseFrom(Lcom/uqm/crashsight/protobuf/ByteString;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 16595
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/uqm/crashsight/protobuf/Parser;->parseFrom(Lcom/uqm/crashsight/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;

    return-object p0
.end method

.method public static parseFrom(Lcom/uqm/crashsight/protobuf/ByteString;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 16601
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/uqm/crashsight/protobuf/Parser;->parseFrom(Lcom/uqm/crashsight/protobuf/ByteString;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;

    return-object p0
.end method

.method public static parseFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 16640
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    .line 16641
    invoke-static {v0, p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/uqm/crashsight/protobuf/Parser;Lcom/uqm/crashsight/protobuf/CodedInputStream;)Lcom/uqm/crashsight/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;

    return-object p0
.end method

.method public static parseFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 16647
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    .line 16648
    invoke-static {v0, p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/uqm/crashsight/protobuf/Parser;Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 16615
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    .line 16616
    invoke-static {v0, p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/uqm/crashsight/protobuf/Parser;Ljava/io/InputStream;)Lcom/uqm/crashsight/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 16622
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    .line 16623
    invoke-static {v0, p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/uqm/crashsight/protobuf/Parser;Ljava/io/InputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 16584
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/uqm/crashsight/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 16590
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/uqm/crashsight/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 16605
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/uqm/crashsight/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;

    return-object p0
.end method

.method public static parseFrom([BLcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 16611
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/uqm/crashsight/protobuf/Parser;->parseFrom([BLcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;

    return-object p0
.end method

.method public static parser()Lcom/uqm/crashsight/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/uqm/crashsight/protobuf/Parser<",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;",
            ">;"
        }
    .end annotation

    .line 17682
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public final containsValueMap(Ljava/lang/String;)Z
    .locals 1

    .line 16233
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16234
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->internalGetValueMap()Lcom/uqm/crashsight/protobuf/MapField;

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

    .line 16501
    :cond_0
    instance-of v1, p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;

    if-nez v1, :cond_1

    .line 16502
    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 16504
    :cond_1
    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;

    .line 16506
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->getEnable()Z

    move-result v1

    .line 16507
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->getEnable()Z

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    .line 16508
    :cond_2
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->getEnableUserInfo()Z

    move-result v1

    .line 16509
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->getEnableUserInfo()Z

    move-result v2

    if-eq v1, v2, :cond_3

    return v3

    .line 16510
    :cond_3
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->getEnableQuery()Z

    move-result v1

    .line 16511
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->getEnableQuery()Z

    move-result v2

    if-eq v1, v2, :cond_4

    return v3

    .line 16512
    :cond_4
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 16513
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v3

    .line 16514
    :cond_5
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->getExpUrl()Ljava/lang/String;

    move-result-object v1

    .line 16515
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->getExpUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v3

    .line 16516
    :cond_6
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->hasSecurity()Z

    move-result v1

    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->hasSecurity()Z

    move-result v2

    if-eq v1, v2, :cond_7

    return v3

    .line 16517
    :cond_7
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->hasSecurity()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 16518
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->getSecurity()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;

    move-result-object v1

    .line 16519
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->getSecurity()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v3

    .line 16521
    :cond_8
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->internalGetValueMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v1

    .line 16522
    invoke-direct {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->internalGetValueMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v2

    .line 16521
    invoke-virtual {v1, v2}, Lcom/uqm/crashsight/protobuf/MapField;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v3

    .line 16523
    :cond_9
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->getStrategylastUpdateTime()J

    move-result-wide v1

    .line 16524
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->getStrategylastUpdateTime()J

    move-result-wide v4

    cmp-long v6, v1, v4

    if-eqz v6, :cond_a

    return v3

    .line 16525
    :cond_a
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->getHttpsUrl()Ljava/lang/String;

    move-result-object v1

    .line 16526
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->getHttpsUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v3

    .line 16527
    :cond_b
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->getHttpsExpUrl()Ljava/lang/String;

    move-result-object v1

    .line 16528
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->getHttpsExpUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v3

    .line 16529
    :cond_c
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->getEventRecordCount()I

    move-result v1

    .line 16530
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->getEventRecordCount()I

    move-result v2

    if-eq v1, v2, :cond_d

    return v3

    .line 16531
    :cond_d
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->getEventTimeInterval()I

    move-result v1

    .line 16532
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->getEventTimeInterval()I

    move-result v2

    if-eq v1, v2, :cond_e

    return v3

    .line 16533
    :cond_e
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    return v3

    :cond_f
    return v0
.end method

.method public final getDefaultInstanceForType()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;
    .locals 1

    .line 17692
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->DEFAULT_INSTANCE:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/uqm/crashsight/protobuf/Message;
    .locals 1

    .line 15905
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->getDefaultInstanceForType()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/uqm/crashsight/protobuf/MessageLite;
    .locals 1

    .line 15905
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->getDefaultInstanceForType()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;

    move-result-object v0

    return-object v0
.end method

.method public final getEnable()Z
    .locals 1

    .line 16083
    iget-boolean v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->enable_:Z

    return v0
.end method

.method public final getEnableQuery()Z
    .locals 1

    .line 16103
    iget-boolean v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->enableQuery_:Z

    return v0
.end method

.method public final getEnableUserInfo()Z
    .locals 1

    .line 16093
    iget-boolean v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->enableUserInfo_:Z

    return v0
.end method

.method public final getEventRecordCount()I
    .locals 1

    .line 16366
    iget v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->eventRecordCount_:I

    return v0
.end method

.method public final getEventTimeInterval()I
    .locals 1

    .line 16376
    iget v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->eventTimeInterval_:I

    return v0
.end method

.method public final getExpUrl()Ljava/lang/String;
    .locals 2

    .line 16149
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->expUrl_:Ljava/lang/Object;

    .line 16150
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 16151
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 16153
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 16155
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v0

    .line 16156
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->expUrl_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getExpUrlBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    .line 16166
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->expUrl_:Ljava/lang/Object;

    .line 16167
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 16168
    check-cast v0, Ljava/lang/String;

    .line 16169
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    .line 16171
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->expUrl_:Ljava/lang/Object;

    return-object v0

    .line 16174
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final getHttpsExpUrl()Ljava/lang/String;
    .locals 2

    .line 16330
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->httpsExpUrl_:Ljava/lang/Object;

    .line 16331
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 16332
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 16334
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 16336
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v0

    .line 16337
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->httpsExpUrl_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getHttpsExpUrlBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    .line 16347
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->httpsExpUrl_:Ljava/lang/Object;

    .line 16348
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 16349
    check-cast v0, Ljava/lang/String;

    .line 16350
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    .line 16352
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->httpsExpUrl_:Ljava/lang/Object;

    return-object v0

    .line 16355
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final getHttpsUrl()Ljava/lang/String;
    .locals 2

    .line 16294
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->httpsUrl_:Ljava/lang/Object;

    .line 16295
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 16296
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 16298
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 16300
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v0

    .line 16301
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->httpsUrl_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getHttpsUrlBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    .line 16311
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->httpsUrl_:Ljava/lang/Object;

    .line 16312
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 16313
    check-cast v0, Ljava/lang/String;

    .line 16314
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    .line 16316
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->httpsUrl_:Ljava/lang/Object;

    return-object v0

    .line 16319
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
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;",
            ">;"
        }
    .end annotation

    .line 17687
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    return-object v0
.end method

.method public final getSecurity()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;
    .locals 1

    .line 16192
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->security_:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;->getDefaultInstance()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final getSecurityOrBuilder()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurityOrBuilder;
    .locals 1

    .line 16198
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->getSecurity()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;

    move-result-object v0

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 6

    .line 16437
    iget v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 16441
    :cond_0
    iget-boolean v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->enable_:Z

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 16443
    invoke-static {v1, v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->b(IZ)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 16445
    :goto_0
    iget-boolean v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->enableUserInfo_:Z

    if-eqz v1, :cond_2

    const/4 v2, 0x2

    .line 16447
    invoke-static {v2, v1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 16449
    :cond_2
    iget-boolean v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->enableQuery_:Z

    if-eqz v1, :cond_3

    const/4 v2, 0x3

    .line 16451
    invoke-static {v2, v1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 16453
    :cond_3
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->getUrlBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/ByteString;->c()Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x4

    .line 16454
    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->url_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 16456
    :cond_4
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->getExpUrlBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/ByteString;->c()Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v1, 0x5

    .line 16457
    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->expUrl_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 16459
    :cond_5
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->security_:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;

    if-eqz v1, :cond_6

    const/4 v1, 0x6

    .line 16461
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->getSecurity()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->c(ILcom/uqm/crashsight/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 16464
    :cond_6
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->internalGetValueMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/MapField;->a()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 16466
    sget-object v3, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$ValueMapDefaultEntryHolder;->defaultEntry:Lcom/uqm/crashsight/protobuf/MapEntry;

    invoke-virtual {v3}, Lcom/uqm/crashsight/protobuf/MapEntry;->c()Lcom/uqm/crashsight/protobuf/MapEntry$Builder;

    move-result-object v3

    .line 16467
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/uqm/crashsight/protobuf/MapEntry$Builder;->a(Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/MapEntry$Builder;

    move-result-object v3

    .line 16468
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/uqm/crashsight/protobuf/MapEntry$Builder;->b(Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/MapEntry$Builder;

    move-result-object v2

    .line 16469
    invoke-virtual {v2}, Lcom/uqm/crashsight/protobuf/MapEntry$Builder;->a()Lcom/uqm/crashsight/protobuf/MapEntry;

    move-result-object v2

    const/4 v3, 0x7

    .line 16471
    invoke-static {v3, v2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->c(ILcom/uqm/crashsight/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_1

    .line 16473
    :cond_7
    iget-wide v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->strategylastUpdateTime_:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_8

    const/16 v3, 0x8

    .line 16475
    invoke-static {v3, v1, v2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->c(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 16477
    :cond_8
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->getHttpsUrlBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/ByteString;->c()Z

    move-result v1

    if-nez v1, :cond_9

    const/16 v1, 0x9

    .line 16478
    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->httpsUrl_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 16480
    :cond_9
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->getHttpsExpUrlBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/ByteString;->c()Z

    move-result v1

    if-nez v1, :cond_a

    const/16 v1, 0xa

    .line 16481
    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->httpsExpUrl_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 16483
    :cond_a
    iget v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->eventRecordCount_:I

    if-eqz v1, :cond_b

    const/16 v2, 0xb

    .line 16485
    invoke-static {v2, v1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->d(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 16487
    :cond_b
    iget v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->eventTimeInterval_:I

    if-eqz v1, :cond_c

    const/16 v2, 0xc

    .line 16489
    invoke-static {v2, v1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->d(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 16491
    :cond_c
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 16492
    iput v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->memoizedSize:I

    return v0
.end method

.method public final getStrategylastUpdateTime()J
    .locals 2

    .line 16284
    iget-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->strategylastUpdateTime_:J

    return-wide v0
.end method

.method public final getUnknownFields()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;
    .locals 1

    .line 15931
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 2

    .line 16113
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->url_:Ljava/lang/Object;

    .line 16114
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 16115
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 16117
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 16119
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v0

    .line 16120
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->url_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getUrlBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    .line 16130
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->url_:Ljava/lang/Object;

    .line 16131
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 16132
    check-cast v0, Ljava/lang/String;

    .line 16133
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    .line 16135
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->url_:Ljava/lang/Object;

    return-object v0

    .line 16138
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

    .line 16241
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->getValueMapMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getValueMapCount()I
    .locals 1

    .line 16225
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->internalGetValueMap()Lcom/uqm/crashsight/protobuf/MapField;

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

    .line 16248
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->internalGetValueMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->a()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getValueMapOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 16257
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16259
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->internalGetValueMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->a()Ljava/util/Map;

    move-result-object v0

    .line 16260
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

    .line 16268
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16270
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->internalGetValueMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->a()Ljava/util/Map;

    move-result-object v0

    .line 16271
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 16274
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 16272
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final hasSecurity()Z
    .locals 1

    .line 16185
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->security_:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 16539
    iget v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 16540
    iget v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->memoizedHashCode:I

    return v0

    .line 16543
    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->getDescriptor()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 16546
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->getEnable()Z

    move-result v1

    .line 16545
    invoke-static {v1}, Lcom/uqm/crashsight/protobuf/Internal;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 16549
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->getEnableUserInfo()Z

    move-result v1

    .line 16548
    invoke-static {v1}, Lcom/uqm/crashsight/protobuf/Internal;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 16552
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->getEnableQuery()Z

    move-result v1

    .line 16551
    invoke-static {v1}, Lcom/uqm/crashsight/protobuf/Internal;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 16554
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    .line 16556
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->getExpUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 16557
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->hasSecurity()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x35

    .line 16559
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->getSecurity()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 16561
    :cond_1
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->internalGetValueMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/MapField;->a()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x7

    mul-int/lit8 v0, v0, 0x35

    .line 16563
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->internalGetValueMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/MapField;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x35

    .line 16567
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->getStrategylastUpdateTime()J

    move-result-wide v1

    .line 16566
    invoke-static {v1, v2}, Lcom/uqm/crashsight/protobuf/Internal;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x9

    mul-int/lit8 v0, v0, 0x35

    .line 16569
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->getHttpsUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xa

    mul-int/lit8 v0, v0, 0x35

    .line 16571
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->getHttpsExpUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xb

    mul-int/lit8 v0, v0, 0x35

    .line 16573
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->getEventRecordCount()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xc

    mul-int/lit8 v0, v0, 0x35

    .line 16575
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->getEventTimeInterval()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1d

    .line 16576
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 16577
    iput v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->memoizedHashCode:I

    return v0
.end method

.method protected final internalGetFieldAccessorTable()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 16071
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->access$22300()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;

    const-class v2, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;

    .line 16072
    invoke-virtual {v0, v1, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method protected final internalGetMapField(I)Lcom/uqm/crashsight/protobuf/MapField;
    .locals 3

    const/4 v0, 0x7

    if-ne p1, v0, :cond_0

    .line 16062
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->internalGetValueMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object p1

    return-object p1

    .line 16064
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
.end method

.method public final isInitialized()Z
    .locals 2

    .line 16382
    iget-byte v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 16386
    :cond_1
    iput-byte v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->memoizedIsInitialized:B

    return v1
.end method

.method public final newBuilderForType()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;
    .locals 1

    .line 16652
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->newBuilder()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newBuilderForType(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;
    .locals 2

    .line 16668
    new-instance v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;Lcom/uqm/crashsight/crashreport/common/info/SightPkg$1;)V

    return-object v0
.end method

.method public final bridge synthetic newBuilderForType()Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 1

    .line 15905
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->newBuilderForType()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic newBuilderForType(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    .line 15905
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->newBuilderForType(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic newBuilderForType()Lcom/uqm/crashsight/protobuf/MessageLite$Builder;
    .locals 1

    .line 15905
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->newBuilderForType()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newInstance(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 15925
    new-instance p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;

    invoke-direct {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;-><init>()V

    return-object p1
.end method

.method public final toBuilder()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;
    .locals 2

    .line 16661
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->DEFAULT_INSTANCE:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;

    invoke-direct {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;-><init>(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$1;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;

    invoke-direct {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;-><init>(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$1;)V

    .line 16662
    invoke-virtual {v0, p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->mergeFrom(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 1

    .line 15905
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->toBuilder()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/uqm/crashsight/protobuf/MessageLite$Builder;
    .locals 1

    .line 15905
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->toBuilder()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;

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

    .line 16393
    iget-boolean v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->enable_:Z

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 16394
    invoke-virtual {p1, v1, v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(IZ)V

    .line 16396
    :cond_0
    iget-boolean v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->enableUserInfo_:Z

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 16397
    invoke-virtual {p1, v1, v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(IZ)V

    .line 16399
    :cond_1
    iget-boolean v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->enableQuery_:Z

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 16400
    invoke-virtual {p1, v1, v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(IZ)V

    .line 16402
    :cond_2
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->getUrlBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->c()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x4

    .line 16403
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->url_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->writeString(Lcom/uqm/crashsight/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 16405
    :cond_3
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->getExpUrlBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->c()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x5

    .line 16406
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->expUrl_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->writeString(Lcom/uqm/crashsight/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 16408
    :cond_4
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->security_:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    .line 16409
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->getSecurity()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(ILcom/uqm/crashsight/protobuf/MessageLite;)V

    .line 16414
    :cond_5
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->internalGetValueMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    sget-object v1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$ValueMapDefaultEntryHolder;->defaultEntry:Lcom/uqm/crashsight/protobuf/MapEntry;

    const/4 v2, 0x7

    .line 16412
    invoke-static {p1, v0, v1, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->serializeStringMapTo(Lcom/uqm/crashsight/protobuf/CodedOutputStream;Lcom/uqm/crashsight/protobuf/MapField;Lcom/uqm/crashsight/protobuf/MapEntry;I)V

    .line 16417
    iget-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->strategylastUpdateTime_:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_6

    const/16 v2, 0x8

    .line 18256
    invoke-virtual {p1, v2, v0, v1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(IJ)V

    .line 16420
    :cond_6
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->getHttpsUrlBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->c()Z

    move-result v0

    if-nez v0, :cond_7

    const/16 v0, 0x9

    .line 16421
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->httpsUrl_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->writeString(Lcom/uqm/crashsight/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 16423
    :cond_7
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->getHttpsExpUrlBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->c()Z

    move-result v0

    if-nez v0, :cond_8

    const/16 v0, 0xa

    .line 16424
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->httpsExpUrl_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->writeString(Lcom/uqm/crashsight/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 16426
    :cond_8
    iget v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->eventRecordCount_:I

    if-eqz v0, :cond_9

    const/16 v1, 0xb

    .line 16427
    invoke-virtual {p1, v1, v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->b(II)V

    .line 16429
    :cond_9
    iget v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->eventTimeInterval_:I

    if-eqz v0, :cond_a

    const/16 v1, 0xc

    .line 16430
    invoke-virtual {p1, v1, v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->b(II)V

    .line 16432
    :cond_a
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->writeTo(Lcom/uqm/crashsight/protobuf/CodedOutputStream;)V

    return-void
.end method
