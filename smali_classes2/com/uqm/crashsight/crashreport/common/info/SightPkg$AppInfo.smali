.class public final Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;
.super Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;
.source "CrashSight"

# interfaces
.implements Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/crashreport/common/info/SightPkg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AppInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;,
        Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$ValueMapDefaultEntryHolder;
    }
.end annotation


# static fields
.field public static final ARCH_FIELD_NUMBER:I = 0x2

.field public static final BASEADDR_FIELD_NUMBER:I = 0x4

.field private static final DEFAULT_INSTANCE:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field private static final PARSER:Lcom/uqm/crashsight/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/uqm/crashsight/protobuf/Parser<",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final UUID_FIELD_NUMBER:I = 0x3

.field public static final VALUEMAP_FIELD_NUMBER:I = 0x6

.field public static final VER_FIELD_NUMBER:I = 0x5

.field private static final serialVersionUID:J


# instance fields
.field private volatile arch_:Ljava/lang/Object;

.field private volatile baseAddr_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private volatile name_:Ljava/lang/Object;

.field private volatile uUID_:Ljava/lang/Object;

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

.field private volatile ver_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20631
    new-instance v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;

    invoke-direct {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;-><init>()V

    sput-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->DEFAULT_INSTANCE:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;

    .line 20639
    new-instance v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$1;

    invoke-direct {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$1;-><init>()V

    sput-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 19307
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 19689
    iput-byte v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->memoizedIsInitialized:B

    .line 19308
    const-string v0, ""

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->name_:Ljava/lang/Object;

    .line 19309
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->arch_:Ljava/lang/Object;

    .line 19310
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->uUID_:Ljava/lang/Object;

    .line 19311
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->baseAddr_:Ljava/lang/Object;

    .line 19312
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->ver_:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 19331
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;-><init>()V

    .line 19333
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19337
    invoke-static {}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_9

    .line 19341
    :try_start_0
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a()I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_8

    const/16 v5, 0xa

    if-eq v3, v5, :cond_7

    const/16 v5, 0x12

    if-eq v3, v5, :cond_6

    const/16 v5, 0x1a

    if-eq v3, v5, :cond_5

    const/16 v5, 0x22

    if-eq v3, v5, :cond_4

    const/16 v5, 0x2a

    if-eq v3, v5, :cond_3

    const/16 v5, 0x32

    if-eq v3, v5, :cond_1

    .line 19390
    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->parseUnknownField(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_1
    if-nez v2, :cond_2

    .line 19378
    sget-object v2, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$ValueMapDefaultEntryHolder;->defaultEntry:Lcom/uqm/crashsight/protobuf/MapEntry;

    invoke-static {v2}, Lcom/uqm/crashsight/protobuf/MapField;->b(Lcom/uqm/crashsight/protobuf/MapEntry;)Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v2

    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->valueMap_:Lcom/uqm/crashsight/protobuf/MapField;

    const/4 v2, 0x1

    .line 19383
    :cond_2
    sget-object v3, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$ValueMapDefaultEntryHolder;->defaultEntry:Lcom/uqm/crashsight/protobuf/MapEntry;

    .line 19384
    invoke-virtual {v3}, Lcom/uqm/crashsight/protobuf/MapEntry;->getParserForType()Lcom/uqm/crashsight/protobuf/Parser;

    move-result-object v3

    .line 19383
    invoke-virtual {p1, v3, p2}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a(Lcom/uqm/crashsight/protobuf/Parser;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/uqm/crashsight/protobuf/MapEntry;

    .line 19385
    iget-object v4, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->valueMap_:Lcom/uqm/crashsight/protobuf/MapField;

    invoke-virtual {v4}, Lcom/uqm/crashsight/protobuf/MapField;->b()Ljava/util/Map;

    move-result-object v4

    .line 19386
    invoke-virtual {v3}, Lcom/uqm/crashsight/protobuf/MapEntry;->a()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3}, Lcom/uqm/crashsight/protobuf/MapEntry;->b()Ljava/lang/Object;

    move-result-object v3

    .line 19385
    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 19371
    :cond_3
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->k()Ljava/lang/String;

    move-result-object v3

    .line 19373
    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->ver_:Ljava/lang/Object;

    goto :goto_0

    .line 19365
    :cond_4
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->k()Ljava/lang/String;

    move-result-object v3

    .line 19367
    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->baseAddr_:Ljava/lang/Object;

    goto :goto_0

    .line 19359
    :cond_5
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->k()Ljava/lang/String;

    move-result-object v3

    .line 19361
    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->uUID_:Ljava/lang/Object;

    goto :goto_0

    .line 19353
    :cond_6
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->k()Ljava/lang/String;

    move-result-object v3

    .line 19355
    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->arch_:Ljava/lang/Object;

    goto :goto_0

    .line 19347
    :cond_7
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->k()Ljava/lang/String;

    move-result-object v3

    .line 19349
    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->name_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_8
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 19401
    :try_start_1
    new-instance p2, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 19402
    invoke-virtual {p2, p0}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->a(Lcom/uqm/crashsight/protobuf/MessageLite;)Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 19399
    invoke-virtual {p1, p0}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->a(Lcom/uqm/crashsight/protobuf/MessageLite;)Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19404
    :goto_2
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    .line 19405
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->makeExtensionsImmutable()V

    .line 19406
    throw p1

    .line 19404
    :cond_9
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    .line 19405
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;Lcom/uqm/crashsight/crashreport/common/info/SightPkg$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 19298
    invoke-direct {p0, p1, p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;-><init>(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)V

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

    .line 19305
    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 19689
    iput-byte p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;Lcom/uqm/crashsight/crashreport/common/info/SightPkg$1;)V
    .locals 0

    .line 19298
    invoke-direct {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$28000()Z
    .locals 1

    .line 19298
    sget-boolean v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$28200(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;)Ljava/lang/Object;
    .locals 0

    .line 19298
    iget-object p0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->name_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$28202(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 19298
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->name_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$28300(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;)Ljava/lang/Object;
    .locals 0

    .line 19298
    iget-object p0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->arch_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$28302(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 19298
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->arch_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$28400(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;)Ljava/lang/Object;
    .locals 0

    .line 19298
    iget-object p0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->uUID_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$28402(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 19298
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->uUID_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$28500(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;)Ljava/lang/Object;
    .locals 0

    .line 19298
    iget-object p0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->baseAddr_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$28502(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 19298
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->baseAddr_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$28600(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;)Ljava/lang/Object;
    .locals 0

    .line 19298
    iget-object p0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->ver_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$28602(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 19298
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->ver_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$28700(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;)Lcom/uqm/crashsight/protobuf/MapField;
    .locals 0

    .line 19298
    iget-object p0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->valueMap_:Lcom/uqm/crashsight/protobuf/MapField;

    return-object p0
.end method

.method static synthetic access$28702(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;Lcom/uqm/crashsight/protobuf/MapField;)Lcom/uqm/crashsight/protobuf/MapField;
    .locals 0

    .line 19298
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->valueMap_:Lcom/uqm/crashsight/protobuf/MapField;

    return-object p1
.end method

.method static synthetic access$28800(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;)Lcom/uqm/crashsight/protobuf/MapField;
    .locals 0

    .line 19298
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->internalGetValueMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$28900(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;)Lcom/uqm/crashsight/protobuf/UnknownFieldSet;
    .locals 0

    .line 19298
    iget-object p0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method static synthetic access$29000()Lcom/uqm/crashsight/protobuf/Parser;
    .locals 1

    .line 19298
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    return-object v0
.end method

.method static synthetic access$29100(Lcom/uqm/crashsight/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 19298
    invoke-static {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->checkByteStringIsUtf8(Lcom/uqm/crashsight/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$29200(Lcom/uqm/crashsight/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 19298
    invoke-static {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->checkByteStringIsUtf8(Lcom/uqm/crashsight/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$29300(Lcom/uqm/crashsight/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 19298
    invoke-static {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->checkByteStringIsUtf8(Lcom/uqm/crashsight/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$29400(Lcom/uqm/crashsight/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 19298
    invoke-static {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->checkByteStringIsUtf8(Lcom/uqm/crashsight/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$29500(Lcom/uqm/crashsight/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 19298
    invoke-static {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->checkByteStringIsUtf8(Lcom/uqm/crashsight/protobuf/ByteString;)V

    return-void
.end method

.method public static getDefaultInstance()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;
    .locals 1

    .line 20635
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->DEFAULT_INSTANCE:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 19410
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->access$27500()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

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

    .line 19629
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->valueMap_:Lcom/uqm/crashsight/protobuf/MapField;

    if-nez v0, :cond_0

    .line 19630
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$ValueMapDefaultEntryHolder;->defaultEntry:Lcom/uqm/crashsight/protobuf/MapEntry;

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/MapField;->a(Lcom/uqm/crashsight/protobuf/MapEntry;)Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static newBuilder()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;
    .locals 1

    .line 19888
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->DEFAULT_INSTANCE:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->toBuilder()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;
    .locals 1

    .line 19891
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->DEFAULT_INSTANCE:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->toBuilder()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->mergeFrom(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19861
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    .line 19862
    invoke-static {v0, p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/uqm/crashsight/protobuf/Parser;Ljava/io/InputStream;)Lcom/uqm/crashsight/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19868
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    .line 19869
    invoke-static {v0, p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/uqm/crashsight/protobuf/Parser;Ljava/io/InputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/uqm/crashsight/protobuf/ByteString;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 19829
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/uqm/crashsight/protobuf/Parser;->parseFrom(Lcom/uqm/crashsight/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/uqm/crashsight/protobuf/ByteString;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 19835
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/uqm/crashsight/protobuf/Parser;->parseFrom(Lcom/uqm/crashsight/protobuf/ByteString;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19874
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    .line 19875
    invoke-static {v0, p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/uqm/crashsight/protobuf/Parser;Lcom/uqm/crashsight/protobuf/CodedInputStream;)Lcom/uqm/crashsight/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19881
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    .line 19882
    invoke-static {v0, p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/uqm/crashsight/protobuf/Parser;Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19849
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    .line 19850
    invoke-static {v0, p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/uqm/crashsight/protobuf/Parser;Ljava/io/InputStream;)Lcom/uqm/crashsight/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19856
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    .line 19857
    invoke-static {v0, p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/uqm/crashsight/protobuf/Parser;Ljava/io/InputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 19818
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/uqm/crashsight/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 19824
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/uqm/crashsight/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 19839
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/uqm/crashsight/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;

    return-object p0
.end method

.method public static parseFrom([BLcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 19845
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/uqm/crashsight/protobuf/Parser;->parseFrom([BLcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;

    return-object p0
.end method

.method public static parser()Lcom/uqm/crashsight/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/uqm/crashsight/protobuf/Parser<",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;",
            ">;"
        }
    .end annotation

    .line 20650
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public final containsValueMap(Ljava/lang/String;)Z
    .locals 1

    .line 19645
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19646
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->internalGetValueMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 19768
    :cond_0
    instance-of v1, p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;

    if-nez v1, :cond_1

    .line 19769
    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 19771
    :cond_1
    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;

    .line 19773
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->getName()Ljava/lang/String;

    move-result-object v1

    .line 19774
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 19775
    :cond_2
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->getArch()Ljava/lang/String;

    move-result-object v1

    .line 19776
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->getArch()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 19777
    :cond_3
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->getUUID()Ljava/lang/String;

    move-result-object v1

    .line 19778
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->getUUID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 19779
    :cond_4
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->getBaseAddr()Ljava/lang/String;

    move-result-object v1

    .line 19780
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->getBaseAddr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 19781
    :cond_5
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->getVer()Ljava/lang/String;

    move-result-object v1

    .line 19782
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->getVer()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    .line 19783
    :cond_6
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->internalGetValueMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v1

    .line 19784
    invoke-direct {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->internalGetValueMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v3

    .line 19783
    invoke-virtual {v1, v3}, Lcom/uqm/crashsight/protobuf/MapField;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    .line 19785
    :cond_7
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final getArch()Ljava/lang/String;
    .locals 2

    .line 19476
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->arch_:Ljava/lang/Object;

    .line 19477
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 19478
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 19480
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 19482
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v0

    .line 19483
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->arch_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getArchBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    .line 19493
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->arch_:Ljava/lang/Object;

    .line 19494
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 19495
    check-cast v0, Ljava/lang/String;

    .line 19496
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    .line 19498
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->arch_:Ljava/lang/Object;

    return-object v0

    .line 19501
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final getBaseAddr()Ljava/lang/String;
    .locals 2

    .line 19548
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->baseAddr_:Ljava/lang/Object;

    .line 19549
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 19550
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 19552
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 19554
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v0

    .line 19555
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->baseAddr_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getBaseAddrBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    .line 19565
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->baseAddr_:Ljava/lang/Object;

    .line 19566
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 19567
    check-cast v0, Ljava/lang/String;

    .line 19568
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    .line 19570
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->baseAddr_:Ljava/lang/Object;

    return-object v0

    .line 19573
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;
    .locals 1

    .line 20660
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->DEFAULT_INSTANCE:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/uqm/crashsight/protobuf/Message;
    .locals 1

    .line 19298
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->getDefaultInstanceForType()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/uqm/crashsight/protobuf/MessageLite;
    .locals 1

    .line 19298
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->getDefaultInstanceForType()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;

    move-result-object v0

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 2

    .line 19440
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->name_:Ljava/lang/Object;

    .line 19441
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 19442
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 19444
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 19446
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v0

    .line 19447
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->name_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getNameBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    .line 19457
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->name_:Ljava/lang/Object;

    .line 19458
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 19459
    check-cast v0, Ljava/lang/String;

    .line 19460
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    .line 19462
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->name_:Ljava/lang/Object;

    return-object v0

    .line 19465
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
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;",
            ">;"
        }
    .end annotation

    .line 20655
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 5

    .line 19729
    iget v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 19733
    :cond_0
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->getNameBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->c()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 19734
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->name_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 19736
    :goto_0
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->getArchBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/ByteString;->c()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x2

    .line 19737
    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->arch_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 19739
    :cond_2
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->getUUIDBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/ByteString;->c()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x3

    .line 19740
    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->uUID_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 19742
    :cond_3
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->getBaseAddrBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/ByteString;->c()Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x4

    .line 19743
    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->baseAddr_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 19745
    :cond_4
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->getVerBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/ByteString;->c()Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v1, 0x5

    .line 19746
    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->ver_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 19749
    :cond_5
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->internalGetValueMap()Lcom/uqm/crashsight/protobuf/MapField;

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

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 19751
    sget-object v3, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$ValueMapDefaultEntryHolder;->defaultEntry:Lcom/uqm/crashsight/protobuf/MapEntry;

    invoke-virtual {v3}, Lcom/uqm/crashsight/protobuf/MapEntry;->c()Lcom/uqm/crashsight/protobuf/MapEntry$Builder;

    move-result-object v3

    .line 19752
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/uqm/crashsight/protobuf/MapEntry$Builder;->a(Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/MapEntry$Builder;

    move-result-object v3

    .line 19753
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/uqm/crashsight/protobuf/MapEntry$Builder;->b(Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/MapEntry$Builder;

    move-result-object v2

    .line 19754
    invoke-virtual {v2}, Lcom/uqm/crashsight/protobuf/MapEntry$Builder;->a()Lcom/uqm/crashsight/protobuf/MapEntry;

    move-result-object v2

    const/4 v3, 0x6

    .line 19756
    invoke-static {v3, v2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->c(ILcom/uqm/crashsight/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_1

    .line 19758
    :cond_6
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 19759
    iput v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->memoizedSize:I

    return v0
.end method

.method public final getUUID()Ljava/lang/String;
    .locals 2

    .line 19512
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->uUID_:Ljava/lang/Object;

    .line 19513
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 19514
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 19516
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 19518
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v0

    .line 19519
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->uUID_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getUUIDBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    .line 19529
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->uUID_:Ljava/lang/Object;

    .line 19530
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 19531
    check-cast v0, Ljava/lang/String;

    .line 19532
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    .line 19534
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->uUID_:Ljava/lang/Object;

    return-object v0

    .line 19537
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;
    .locals 1

    .line 19325
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

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

    .line 19653
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->getValueMapMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getValueMapCount()I
    .locals 1

    .line 19637
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->internalGetValueMap()Lcom/uqm/crashsight/protobuf/MapField;

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

    .line 19660
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->internalGetValueMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->a()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getValueMapOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 19669
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19671
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->internalGetValueMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->a()Ljava/util/Map;

    move-result-object v0

    .line 19672
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

    .line 19680
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19682
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->internalGetValueMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->a()Ljava/util/Map;

    move-result-object v0

    .line 19683
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 19686
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 19684
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final getVer()Ljava/lang/String;
    .locals 2

    .line 19584
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->ver_:Ljava/lang/Object;

    .line 19585
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 19586
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 19588
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 19590
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v0

    .line 19591
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->ver_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getVerBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    .line 19601
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->ver_:Ljava/lang/Object;

    .line 19602
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 19603
    check-cast v0, Ljava/lang/String;

    .line 19604
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    .line 19606
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->ver_:Ljava/lang/Object;

    return-object v0

    .line 19609
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    .line 19791
    iget v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 19792
    iget v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->memoizedHashCode:I

    return v0

    .line 19795
    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->getDescriptor()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 19797
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 19799
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->getArch()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 19801
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->getUUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 19803
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->getBaseAddr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    .line 19805
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->getVer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 19806
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->internalGetValueMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/MapField;->a()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x35

    .line 19808
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->internalGetValueMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/MapField;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    mul-int/lit8 v0, v0, 0x1d

    .line 19810
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 19811
    iput v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->memoizedHashCode:I

    return v0
.end method

.method protected final internalGetFieldAccessorTable()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 19428
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->access$27600()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;

    const-class v2, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;

    .line 19429
    invoke-virtual {v0, v1, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method protected final internalGetMapField(I)Lcom/uqm/crashsight/protobuf/MapField;
    .locals 3

    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    .line 19419
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->internalGetValueMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object p1

    return-object p1

    .line 19421
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

    .line 19692
    iget-byte v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 19696
    :cond_1
    iput-byte v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->memoizedIsInitialized:B

    return v1
.end method

.method public final newBuilderForType()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;
    .locals 1

    .line 19886
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->newBuilder()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newBuilderForType(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;
    .locals 2

    .line 19902
    new-instance v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;Lcom/uqm/crashsight/crashreport/common/info/SightPkg$1;)V

    return-object v0
.end method

.method public final bridge synthetic newBuilderForType()Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 1

    .line 19298
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->newBuilderForType()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic newBuilderForType(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    .line 19298
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->newBuilderForType(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic newBuilderForType()Lcom/uqm/crashsight/protobuf/MessageLite$Builder;
    .locals 1

    .line 19298
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->newBuilderForType()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newInstance(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 19319
    new-instance p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;

    invoke-direct {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;-><init>()V

    return-object p1
.end method

.method public final toBuilder()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;
    .locals 2

    .line 19895
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->DEFAULT_INSTANCE:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;

    invoke-direct {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;-><init>(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$1;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;

    invoke-direct {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;-><init>(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$1;)V

    .line 19896
    invoke-virtual {v0, p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->mergeFrom(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 1

    .line 19298
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->toBuilder()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/uqm/crashsight/protobuf/MessageLite$Builder;
    .locals 1

    .line 19298
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->toBuilder()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/uqm/crashsight/protobuf/CodedOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19703
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->getNameBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 19704
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->name_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->writeString(Lcom/uqm/crashsight/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 19706
    :cond_0
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->getArchBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->c()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    .line 19707
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->arch_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->writeString(Lcom/uqm/crashsight/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 19709
    :cond_1
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->getUUIDBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->c()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x3

    .line 19710
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->uUID_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->writeString(Lcom/uqm/crashsight/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 19712
    :cond_2
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->getBaseAddrBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->c()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x4

    .line 19713
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->baseAddr_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->writeString(Lcom/uqm/crashsight/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 19715
    :cond_3
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->getVerBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->c()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x5

    .line 19716
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->ver_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->writeString(Lcom/uqm/crashsight/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 19721
    :cond_4
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->internalGetValueMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    sget-object v1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$ValueMapDefaultEntryHolder;->defaultEntry:Lcom/uqm/crashsight/protobuf/MapEntry;

    const/4 v2, 0x6

    .line 19719
    invoke-static {p1, v0, v1, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->serializeStringMapTo(Lcom/uqm/crashsight/protobuf/CodedOutputStream;Lcom/uqm/crashsight/protobuf/MapField;Lcom/uqm/crashsight/protobuf/MapEntry;I)V

    .line 19724
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->writeTo(Lcom/uqm/crashsight/protobuf/CodedOutputStream;)V

    return-void
.end method
