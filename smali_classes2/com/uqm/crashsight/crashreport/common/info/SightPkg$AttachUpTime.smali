.class public final Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;
.super Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;
.source "CrashSight"

# interfaces
.implements Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTimeOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/crashreport/common/info/SightPkg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AttachUpTime"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;,
        Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$ValueMapDefaultEntryHolder;
    }
.end annotation


# static fields
.field public static final ATTACHSIZE_FIELD_NUMBER:I = 0x4

.field public static final COPYTIME_FIELD_NUMBER:I = 0x8

.field private static final DEFAULT_INSTANCE:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;

.field public static final DELETETIME_FIELD_NUMBER:I = 0xb

.field public static final EXPUID_FIELD_NUMBER:I = 0xc

.field public static final NETWORKTYPE_FIELD_NUMBER:I = 0x6

.field private static final PARSER:Lcom/uqm/crashsight/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/uqm/crashsight/protobuf/Parser<",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;",
            ">;"
        }
    .end annotation
.end field

.field public static final RETCODE_FIELD_NUMBER:I = 0x2

.field public static final RETMSG_FIELD_NUMBER:I = 0x3

.field public static final TOTALTIME_FIELD_NUMBER:I = 0x7

.field public static final TYPE_FIELD_NUMBER:I = 0x1

.field public static final UPLOADTIME_FIELD_NUMBER:I = 0xa

.field public static final VALUEMAP_FIELD_NUMBER:I = 0xd

.field public static final ZIPATTACHSIZE_FIELD_NUMBER:I = 0x5

.field public static final ZIPTIME_FIELD_NUMBER:I = 0x9

.field private static final serialVersionUID:J


# instance fields
.field private attachSize_:J

.field private copyTime_:J

.field private deleteTime_:J

.field private volatile expUid_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private volatile networkType_:Ljava/lang/Object;

.field private retCode_:I

.field private volatile retMsg_:Ljava/lang/Object;

.field private totalTime_:J

.field private type_:I

.field private uploadTime_:J

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

.field private zipAttachSize_:J

.field private zipTime_:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15731
    new-instance v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;

    invoke-direct {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;-><init>()V

    sput-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->DEFAULT_INSTANCE:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;

    .line 15739
    new-instance v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$1;

    invoke-direct {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$1;-><init>()V

    sput-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 14114
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 14545
    iput-byte v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->memoizedIsInitialized:B

    .line 14115
    const-string v0, ""

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->retMsg_:Ljava/lang/Object;

    .line 14116
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->networkType_:Ljava/lang/Object;

    .line 14117
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->expUid_:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 14136
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;-><init>()V

    .line 14138
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14142
    invoke-static {}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_2

    .line 14146
    :try_start_0
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a()I

    move-result v3

    const/4 v4, 0x1

    sparse-switch v3, :sswitch_data_0

    .line 14228
    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->parseUnknownField(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    goto/16 :goto_2

    :sswitch_0
    if-nez v2, :cond_1

    .line 14216
    sget-object v2, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$ValueMapDefaultEntryHolder;->defaultEntry:Lcom/uqm/crashsight/protobuf/MapEntry;

    invoke-static {v2}, Lcom/uqm/crashsight/protobuf/MapField;->b(Lcom/uqm/crashsight/protobuf/MapEntry;)Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v2

    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->valueMap_:Lcom/uqm/crashsight/protobuf/MapField;

    const/4 v2, 0x1

    .line 14221
    :cond_1
    sget-object v3, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$ValueMapDefaultEntryHolder;->defaultEntry:Lcom/uqm/crashsight/protobuf/MapEntry;

    .line 14222
    invoke-virtual {v3}, Lcom/uqm/crashsight/protobuf/MapEntry;->getParserForType()Lcom/uqm/crashsight/protobuf/Parser;

    move-result-object v3

    .line 14221
    invoke-virtual {p1, v3, p2}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a(Lcom/uqm/crashsight/protobuf/Parser;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/uqm/crashsight/protobuf/MapEntry;

    .line 14223
    iget-object v4, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->valueMap_:Lcom/uqm/crashsight/protobuf/MapField;

    invoke-virtual {v4}, Lcom/uqm/crashsight/protobuf/MapField;->b()Ljava/util/Map;

    move-result-object v4

    .line 14224
    invoke-virtual {v3}, Lcom/uqm/crashsight/protobuf/MapEntry;->a()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3}, Lcom/uqm/crashsight/protobuf/MapEntry;->b()Ljava/lang/Object;

    move-result-object v3

    .line 14223
    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 14209
    :sswitch_1
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->k()Ljava/lang/String;

    move-result-object v3

    .line 14211
    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->expUid_:Ljava/lang/Object;

    goto :goto_0

    .line 14205
    :sswitch_2
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->e()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->deleteTime_:J

    goto :goto_0

    .line 14200
    :sswitch_3
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->e()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->uploadTime_:J

    goto :goto_0

    .line 14195
    :sswitch_4
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->e()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->zipTime_:J

    goto :goto_0

    .line 14190
    :sswitch_5
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->e()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->copyTime_:J

    goto :goto_0

    .line 14185
    :sswitch_6
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->e()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->totalTime_:J

    goto :goto_0

    .line 14178
    :sswitch_7
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->k()Ljava/lang/String;

    move-result-object v3

    .line 14180
    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->networkType_:Ljava/lang/Object;

    goto :goto_0

    .line 14174
    :sswitch_8
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->e()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->zipAttachSize_:J

    goto :goto_0

    .line 14169
    :sswitch_9
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->e()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->attachSize_:J

    goto :goto_0

    .line 14162
    :sswitch_a
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->k()Ljava/lang/String;

    move-result-object v3

    .line 14164
    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->retMsg_:Ljava/lang/Object;

    goto :goto_0

    .line 14158
    :sswitch_b
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->f()I

    move-result v3

    iput v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->retCode_:I

    goto/16 :goto_0

    .line 14153
    :sswitch_c
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->f()I

    move-result v3

    iput v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->type_:I
    :try_end_0
    .catch Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_1
    :sswitch_d
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

    .line 14239
    :try_start_1
    new-instance p2, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 14240
    invoke-virtual {p2, p0}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->a(Lcom/uqm/crashsight/protobuf/MessageLite;)Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 14237
    invoke-virtual {p1, p0}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->a(Lcom/uqm/crashsight/protobuf/MessageLite;)Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14242
    :goto_3
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    .line 14243
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->makeExtensionsImmutable()V

    .line 14244
    throw p1

    .line 14242
    :cond_2
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    .line 14243
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->makeExtensionsImmutable()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_c
        0x10 -> :sswitch_b
        0x1a -> :sswitch_a
        0x20 -> :sswitch_9
        0x28 -> :sswitch_8
        0x32 -> :sswitch_7
        0x38 -> :sswitch_6
        0x40 -> :sswitch_5
        0x48 -> :sswitch_4
        0x50 -> :sswitch_3
        0x58 -> :sswitch_2
        0x62 -> :sswitch_1
        0x6a -> :sswitch_0
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;Lcom/uqm/crashsight/crashreport/common/info/SightPkg$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 14105
    invoke-direct {p0, p1, p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;-><init>(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)V

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

    .line 14112
    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 14545
    iput-byte p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;Lcom/uqm/crashsight/crashreport/common/info/SightPkg$1;)V
    .locals 0

    .line 14105
    invoke-direct {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$20000()Z
    .locals 1

    .line 14105
    sget-boolean v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$20202(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;I)I
    .locals 0

    .line 14105
    iput p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->type_:I

    return p1
.end method

.method static synthetic access$20302(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;I)I
    .locals 0

    .line 14105
    iput p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->retCode_:I

    return p1
.end method

.method static synthetic access$20400(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;)Ljava/lang/Object;
    .locals 0

    .line 14105
    iget-object p0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->retMsg_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$20402(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 14105
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->retMsg_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$20502(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;J)J
    .locals 0

    .line 14105
    iput-wide p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->attachSize_:J

    return-wide p1
.end method

.method static synthetic access$20602(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;J)J
    .locals 0

    .line 14105
    iput-wide p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->zipAttachSize_:J

    return-wide p1
.end method

.method static synthetic access$20700(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;)Ljava/lang/Object;
    .locals 0

    .line 14105
    iget-object p0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->networkType_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$20702(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 14105
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->networkType_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$20802(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;J)J
    .locals 0

    .line 14105
    iput-wide p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->totalTime_:J

    return-wide p1
.end method

.method static synthetic access$20902(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;J)J
    .locals 0

    .line 14105
    iput-wide p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->copyTime_:J

    return-wide p1
.end method

.method static synthetic access$21002(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;J)J
    .locals 0

    .line 14105
    iput-wide p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->zipTime_:J

    return-wide p1
.end method

.method static synthetic access$21102(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;J)J
    .locals 0

    .line 14105
    iput-wide p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->uploadTime_:J

    return-wide p1
.end method

.method static synthetic access$21202(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;J)J
    .locals 0

    .line 14105
    iput-wide p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->deleteTime_:J

    return-wide p1
.end method

.method static synthetic access$21300(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;)Ljava/lang/Object;
    .locals 0

    .line 14105
    iget-object p0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->expUid_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$21302(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 14105
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->expUid_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$21400(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;)Lcom/uqm/crashsight/protobuf/MapField;
    .locals 0

    .line 14105
    iget-object p0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->valueMap_:Lcom/uqm/crashsight/protobuf/MapField;

    return-object p0
.end method

.method static synthetic access$21402(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;Lcom/uqm/crashsight/protobuf/MapField;)Lcom/uqm/crashsight/protobuf/MapField;
    .locals 0

    .line 14105
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->valueMap_:Lcom/uqm/crashsight/protobuf/MapField;

    return-object p1
.end method

.method static synthetic access$21500(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;)Lcom/uqm/crashsight/protobuf/MapField;
    .locals 0

    .line 14105
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->internalGetValueMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$21600(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;)Lcom/uqm/crashsight/protobuf/UnknownFieldSet;
    .locals 0

    .line 14105
    iget-object p0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method static synthetic access$21700()Lcom/uqm/crashsight/protobuf/Parser;
    .locals 1

    .line 14105
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    return-object v0
.end method

.method static synthetic access$21800(Lcom/uqm/crashsight/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 14105
    invoke-static {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->checkByteStringIsUtf8(Lcom/uqm/crashsight/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$21900(Lcom/uqm/crashsight/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 14105
    invoke-static {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->checkByteStringIsUtf8(Lcom/uqm/crashsight/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$22000(Lcom/uqm/crashsight/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 14105
    invoke-static {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->checkByteStringIsUtf8(Lcom/uqm/crashsight/protobuf/ByteString;)V

    return-void
.end method

.method public static getDefaultInstance()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;
    .locals 1

    .line 15735
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->DEFAULT_INSTANCE:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 14248
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->access$19500()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

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

    .line 14485
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->valueMap_:Lcom/uqm/crashsight/protobuf/MapField;

    if-nez v0, :cond_0

    .line 14486
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$ValueMapDefaultEntryHolder;->defaultEntry:Lcom/uqm/crashsight/protobuf/MapEntry;

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/MapField;->a(Lcom/uqm/crashsight/protobuf/MapEntry;)Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static newBuilder()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;
    .locals 1

    .line 14830
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->DEFAULT_INSTANCE:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->toBuilder()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;
    .locals 1

    .line 14833
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->DEFAULT_INSTANCE:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->toBuilder()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->mergeFrom(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 14803
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    .line 14804
    invoke-static {v0, p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/uqm/crashsight/protobuf/Parser;Ljava/io/InputStream;)Lcom/uqm/crashsight/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 14810
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    .line 14811
    invoke-static {v0, p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/uqm/crashsight/protobuf/Parser;Ljava/io/InputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;

    return-object p0
.end method

.method public static parseFrom(Lcom/uqm/crashsight/protobuf/ByteString;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 14771
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/uqm/crashsight/protobuf/Parser;->parseFrom(Lcom/uqm/crashsight/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;

    return-object p0
.end method

.method public static parseFrom(Lcom/uqm/crashsight/protobuf/ByteString;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 14777
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/uqm/crashsight/protobuf/Parser;->parseFrom(Lcom/uqm/crashsight/protobuf/ByteString;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;

    return-object p0
.end method

.method public static parseFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 14816
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    .line 14817
    invoke-static {v0, p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/uqm/crashsight/protobuf/Parser;Lcom/uqm/crashsight/protobuf/CodedInputStream;)Lcom/uqm/crashsight/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;

    return-object p0
.end method

.method public static parseFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 14823
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    .line 14824
    invoke-static {v0, p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/uqm/crashsight/protobuf/Parser;Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 14791
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    .line 14792
    invoke-static {v0, p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/uqm/crashsight/protobuf/Parser;Ljava/io/InputStream;)Lcom/uqm/crashsight/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 14798
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    .line 14799
    invoke-static {v0, p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/uqm/crashsight/protobuf/Parser;Ljava/io/InputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 14760
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/uqm/crashsight/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 14766
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/uqm/crashsight/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 14781
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/uqm/crashsight/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;

    return-object p0
.end method

.method public static parseFrom([BLcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 14787
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/uqm/crashsight/protobuf/Parser;->parseFrom([BLcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;

    return-object p0
.end method

.method public static parser()Lcom/uqm/crashsight/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/uqm/crashsight/protobuf/Parser<",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;",
            ">;"
        }
    .end annotation

    .line 15750
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public final containsValueMap(Ljava/lang/String;)Z
    .locals 1

    .line 14501
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14502
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->internalGetValueMap()Lcom/uqm/crashsight/protobuf/MapField;

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

    .line 14675
    :cond_0
    instance-of v1, p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;

    if-nez v1, :cond_1

    .line 14676
    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 14678
    :cond_1
    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;

    .line 14680
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->getType()I

    move-result v1

    .line 14681
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->getType()I

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    .line 14682
    :cond_2
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->getRetCode()I

    move-result v1

    .line 14683
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->getRetCode()I

    move-result v2

    if-eq v1, v2, :cond_3

    return v3

    .line 14684
    :cond_3
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->getRetMsg()Ljava/lang/String;

    move-result-object v1

    .line 14685
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->getRetMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v3

    .line 14686
    :cond_4
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->getAttachSize()J

    move-result-wide v1

    .line 14687
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->getAttachSize()J

    move-result-wide v4

    cmp-long v6, v1, v4

    if-eqz v6, :cond_5

    return v3

    .line 14688
    :cond_5
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->getZipAttachSize()J

    move-result-wide v1

    .line 14689
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->getZipAttachSize()J

    move-result-wide v4

    cmp-long v6, v1, v4

    if-eqz v6, :cond_6

    return v3

    .line 14690
    :cond_6
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->getNetworkType()Ljava/lang/String;

    move-result-object v1

    .line 14691
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->getNetworkType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v3

    .line 14692
    :cond_7
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->getTotalTime()J

    move-result-wide v1

    .line 14693
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->getTotalTime()J

    move-result-wide v4

    cmp-long v6, v1, v4

    if-eqz v6, :cond_8

    return v3

    .line 14694
    :cond_8
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->getCopyTime()J

    move-result-wide v1

    .line 14695
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->getCopyTime()J

    move-result-wide v4

    cmp-long v6, v1, v4

    if-eqz v6, :cond_9

    return v3

    .line 14696
    :cond_9
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->getZipTime()J

    move-result-wide v1

    .line 14697
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->getZipTime()J

    move-result-wide v4

    cmp-long v6, v1, v4

    if-eqz v6, :cond_a

    return v3

    .line 14698
    :cond_a
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->getUploadTime()J

    move-result-wide v1

    .line 14699
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->getUploadTime()J

    move-result-wide v4

    cmp-long v6, v1, v4

    if-eqz v6, :cond_b

    return v3

    .line 14700
    :cond_b
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->getDeleteTime()J

    move-result-wide v1

    .line 14701
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->getDeleteTime()J

    move-result-wide v4

    cmp-long v6, v1, v4

    if-eqz v6, :cond_c

    return v3

    .line 14702
    :cond_c
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->getExpUid()Ljava/lang/String;

    move-result-object v1

    .line 14703
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->getExpUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v3

    .line 14704
    :cond_d
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->internalGetValueMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v1

    .line 14705
    invoke-direct {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->internalGetValueMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v2

    .line 14704
    invoke-virtual {v1, v2}, Lcom/uqm/crashsight/protobuf/MapField;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v3

    .line 14706
    :cond_e
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    return v3

    :cond_f
    return v0
.end method

.method public final getAttachSize()J
    .locals 2

    .line 14334
    iget-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->attachSize_:J

    return-wide v0
.end method

.method public final getCopyTime()J
    .locals 2

    .line 14400
    iget-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->copyTime_:J

    return-wide v0
.end method

.method public final getDefaultInstanceForType()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;
    .locals 1

    .line 15760
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->DEFAULT_INSTANCE:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/uqm/crashsight/protobuf/Message;
    .locals 1

    .line 14105
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->getDefaultInstanceForType()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/uqm/crashsight/protobuf/MessageLite;
    .locals 1

    .line 14105
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->getDefaultInstanceForType()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;

    move-result-object v0

    return-object v0
.end method

.method public final getDeleteTime()J
    .locals 2

    .line 14430
    iget-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->deleteTime_:J

    return-wide v0
.end method

.method public final getExpUid()Ljava/lang/String;
    .locals 2

    .line 14440
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->expUid_:Ljava/lang/Object;

    .line 14441
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 14442
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 14444
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 14446
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v0

    .line 14447
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->expUid_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getExpUidBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    .line 14457
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->expUid_:Ljava/lang/Object;

    .line 14458
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 14459
    check-cast v0, Ljava/lang/String;

    .line 14460
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    .line 14462
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->expUid_:Ljava/lang/Object;

    return-object v0

    .line 14465
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final getNetworkType()Ljava/lang/String;
    .locals 2

    .line 14354
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->networkType_:Ljava/lang/Object;

    .line 14355
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 14356
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 14358
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 14360
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v0

    .line 14361
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->networkType_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getNetworkTypeBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    .line 14371
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->networkType_:Ljava/lang/Object;

    .line 14372
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 14373
    check-cast v0, Ljava/lang/String;

    .line 14374
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    .line 14376
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->networkType_:Ljava/lang/Object;

    return-object v0

    .line 14379
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
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;",
            ">;"
        }
    .end annotation

    .line 15755
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    return-object v0
.end method

.method public final getRetCode()I
    .locals 1

    .line 14288
    iget v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->retCode_:I

    return v0
.end method

.method public final getRetMsg()Ljava/lang/String;
    .locals 2

    .line 14298
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->retMsg_:Ljava/lang/Object;

    .line 14299
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 14300
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 14302
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 14304
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v0

    .line 14305
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->retMsg_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getRetMsgBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    .line 14315
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->retMsg_:Ljava/lang/Object;

    .line 14316
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 14317
    check-cast v0, Ljava/lang/String;

    .line 14318
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    .line 14320
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->retMsg_:Ljava/lang/Object;

    return-object v0

    .line 14323
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 6

    .line 14606
    iget v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 14610
    :cond_0
    iget v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->type_:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 14612
    invoke-static {v1, v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->d(II)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 14614
    :goto_0
    iget v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->retCode_:I

    if-eqz v1, :cond_2

    const/4 v2, 0x2

    .line 14616
    invoke-static {v2, v1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->d(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 14618
    :cond_2
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->getRetMsgBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/ByteString;->c()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x3

    .line 14619
    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->retMsg_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 14621
    :cond_3
    iget-wide v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->attachSize_:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_4

    const/4 v5, 0x4

    .line 14623
    invoke-static {v5, v1, v2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->c(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 14625
    :cond_4
    iget-wide v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->zipAttachSize_:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_5

    const/4 v5, 0x5

    .line 14627
    invoke-static {v5, v1, v2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->c(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 14629
    :cond_5
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->getNetworkTypeBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/ByteString;->c()Z

    move-result v1

    if-nez v1, :cond_6

    const/4 v1, 0x6

    .line 14630
    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->networkType_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 14632
    :cond_6
    iget-wide v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->totalTime_:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_7

    const/4 v5, 0x7

    .line 14634
    invoke-static {v5, v1, v2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->c(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 14636
    :cond_7
    iget-wide v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->copyTime_:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_8

    const/16 v5, 0x8

    .line 14638
    invoke-static {v5, v1, v2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->c(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 14640
    :cond_8
    iget-wide v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->zipTime_:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_9

    const/16 v5, 0x9

    .line 14642
    invoke-static {v5, v1, v2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->c(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 14644
    :cond_9
    iget-wide v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->uploadTime_:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_a

    const/16 v5, 0xa

    .line 14646
    invoke-static {v5, v1, v2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->c(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 14648
    :cond_a
    iget-wide v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->deleteTime_:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_b

    const/16 v3, 0xb

    .line 14650
    invoke-static {v3, v1, v2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->c(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 14652
    :cond_b
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->getExpUidBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/ByteString;->c()Z

    move-result v1

    if-nez v1, :cond_c

    const/16 v1, 0xc

    .line 14653
    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->expUid_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 14656
    :cond_c
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->internalGetValueMap()Lcom/uqm/crashsight/protobuf/MapField;

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

    if-eqz v2, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 14658
    sget-object v3, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$ValueMapDefaultEntryHolder;->defaultEntry:Lcom/uqm/crashsight/protobuf/MapEntry;

    invoke-virtual {v3}, Lcom/uqm/crashsight/protobuf/MapEntry;->c()Lcom/uqm/crashsight/protobuf/MapEntry$Builder;

    move-result-object v3

    .line 14659
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/uqm/crashsight/protobuf/MapEntry$Builder;->a(Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/MapEntry$Builder;

    move-result-object v3

    .line 14660
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/uqm/crashsight/protobuf/MapEntry$Builder;->b(Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/MapEntry$Builder;

    move-result-object v2

    .line 14661
    invoke-virtual {v2}, Lcom/uqm/crashsight/protobuf/MapEntry$Builder;->a()Lcom/uqm/crashsight/protobuf/MapEntry;

    move-result-object v2

    const/16 v3, 0xd

    .line 14663
    invoke-static {v3, v2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->c(ILcom/uqm/crashsight/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_1

    .line 14665
    :cond_d
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 14666
    iput v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->memoizedSize:I

    return v0
.end method

.method public final getTotalTime()J
    .locals 2

    .line 14390
    iget-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->totalTime_:J

    return-wide v0
.end method

.method public final getType()I
    .locals 1

    .line 14278
    iget v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->type_:I

    return v0
.end method

.method public final getUnknownFields()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;
    .locals 1

    .line 14130
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public final getUploadTime()J
    .locals 2

    .line 14420
    iget-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->uploadTime_:J

    return-wide v0
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

    .line 14509
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->getValueMapMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getValueMapCount()I
    .locals 1

    .line 14493
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->internalGetValueMap()Lcom/uqm/crashsight/protobuf/MapField;

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

    .line 14516
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->internalGetValueMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->a()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getValueMapOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 14525
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14527
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->internalGetValueMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->a()Ljava/util/Map;

    move-result-object v0

    .line 14528
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

    .line 14536
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14538
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->internalGetValueMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->a()Ljava/util/Map;

    move-result-object v0

    .line 14539
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 14542
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 14540
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final getZipAttachSize()J
    .locals 2

    .line 14344
    iget-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->zipAttachSize_:J

    return-wide v0
.end method

.method public final getZipTime()J
    .locals 2

    .line 14410
    iget-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->zipTime_:J

    return-wide v0
.end method

.method public final hashCode()I
    .locals 3

    .line 14712
    iget v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 14713
    iget v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->memoizedHashCode:I

    return v0

    .line 14716
    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->getDescriptor()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 14718
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->getType()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 14720
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->getRetCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 14722
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->getRetMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 14725
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->getAttachSize()J

    move-result-wide v1

    .line 14724
    invoke-static {v1, v2}, Lcom/uqm/crashsight/protobuf/Internal;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    .line 14728
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->getZipAttachSize()J

    move-result-wide v1

    .line 14727
    invoke-static {v1, v2}, Lcom/uqm/crashsight/protobuf/Internal;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x35

    .line 14730
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->getNetworkType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x7

    mul-int/lit8 v0, v0, 0x35

    .line 14733
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->getTotalTime()J

    move-result-wide v1

    .line 14732
    invoke-static {v1, v2}, Lcom/uqm/crashsight/protobuf/Internal;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x35

    .line 14736
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->getCopyTime()J

    move-result-wide v1

    .line 14735
    invoke-static {v1, v2}, Lcom/uqm/crashsight/protobuf/Internal;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x9

    mul-int/lit8 v0, v0, 0x35

    .line 14739
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->getZipTime()J

    move-result-wide v1

    .line 14738
    invoke-static {v1, v2}, Lcom/uqm/crashsight/protobuf/Internal;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xa

    mul-int/lit8 v0, v0, 0x35

    .line 14742
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->getUploadTime()J

    move-result-wide v1

    .line 14741
    invoke-static {v1, v2}, Lcom/uqm/crashsight/protobuf/Internal;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xb

    mul-int/lit8 v0, v0, 0x35

    .line 14745
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->getDeleteTime()J

    move-result-wide v1

    .line 14744
    invoke-static {v1, v2}, Lcom/uqm/crashsight/protobuf/Internal;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xc

    mul-int/lit8 v0, v0, 0x35

    .line 14747
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->getExpUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 14748
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->internalGetValueMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/MapField;->a()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xd

    mul-int/lit8 v0, v0, 0x35

    .line 14750
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->internalGetValueMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/MapField;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    mul-int/lit8 v0, v0, 0x1d

    .line 14752
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 14753
    iput v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->memoizedHashCode:I

    return v0
.end method

.method protected final internalGetFieldAccessorTable()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 14266
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->access$19600()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;

    const-class v2, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;

    .line 14267
    invoke-virtual {v0, v1, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method protected final internalGetMapField(I)Lcom/uqm/crashsight/protobuf/MapField;
    .locals 3

    const/16 v0, 0xd

    if-ne p1, v0, :cond_0

    .line 14257
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->internalGetValueMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object p1

    return-object p1

    .line 14259
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

    .line 14548
    iget-byte v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 14552
    :cond_1
    iput-byte v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->memoizedIsInitialized:B

    return v1
.end method

.method public final newBuilderForType()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;
    .locals 1

    .line 14828
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->newBuilder()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newBuilderForType(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;
    .locals 2

    .line 14844
    new-instance v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;Lcom/uqm/crashsight/crashreport/common/info/SightPkg$1;)V

    return-object v0
.end method

.method public final bridge synthetic newBuilderForType()Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 1

    .line 14105
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->newBuilderForType()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic newBuilderForType(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    .line 14105
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->newBuilderForType(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic newBuilderForType()Lcom/uqm/crashsight/protobuf/MessageLite$Builder;
    .locals 1

    .line 14105
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->newBuilderForType()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newInstance(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 14124
    new-instance p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;

    invoke-direct {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;-><init>()V

    return-object p1
.end method

.method public final toBuilder()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;
    .locals 2

    .line 14837
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->DEFAULT_INSTANCE:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;

    invoke-direct {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;-><init>(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$1;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;

    invoke-direct {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;-><init>(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$1;)V

    .line 14838
    invoke-virtual {v0, p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->mergeFrom(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 1

    .line 14105
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->toBuilder()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/uqm/crashsight/protobuf/MessageLite$Builder;
    .locals 1

    .line 14105
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->toBuilder()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;

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

    .line 14559
    iget v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->type_:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 14560
    invoke-virtual {p1, v1, v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->b(II)V

    .line 14562
    :cond_0
    iget v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->retCode_:I

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 14563
    invoke-virtual {p1, v1, v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->b(II)V

    .line 14565
    :cond_1
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->getRetMsgBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->c()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x3

    .line 14566
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->retMsg_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->writeString(Lcom/uqm/crashsight/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 14568
    :cond_2
    iget-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->attachSize_:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_3

    const/4 v4, 0x4

    .line 16256
    invoke-virtual {p1, v4, v0, v1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(IJ)V

    .line 14571
    :cond_3
    iget-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->zipAttachSize_:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_4

    const/4 v4, 0x5

    .line 17256
    invoke-virtual {p1, v4, v0, v1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(IJ)V

    .line 14574
    :cond_4
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->getNetworkTypeBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->c()Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x6

    .line 14575
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->networkType_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->writeString(Lcom/uqm/crashsight/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 14577
    :cond_5
    iget-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->totalTime_:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_6

    const/4 v4, 0x7

    .line 18256
    invoke-virtual {p1, v4, v0, v1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(IJ)V

    .line 14580
    :cond_6
    iget-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->copyTime_:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_7

    const/16 v4, 0x8

    .line 19256
    invoke-virtual {p1, v4, v0, v1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(IJ)V

    .line 14583
    :cond_7
    iget-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->zipTime_:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_8

    const/16 v4, 0x9

    .line 20256
    invoke-virtual {p1, v4, v0, v1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(IJ)V

    .line 14586
    :cond_8
    iget-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->uploadTime_:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_9

    const/16 v4, 0xa

    .line 21256
    invoke-virtual {p1, v4, v0, v1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(IJ)V

    .line 14589
    :cond_9
    iget-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->deleteTime_:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_a

    const/16 v2, 0xb

    .line 22256
    invoke-virtual {p1, v2, v0, v1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(IJ)V

    .line 14592
    :cond_a
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->getExpUidBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->c()Z

    move-result v0

    if-nez v0, :cond_b

    const/16 v0, 0xc

    .line 14593
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->expUid_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->writeString(Lcom/uqm/crashsight/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 14598
    :cond_b
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->internalGetValueMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    sget-object v1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$ValueMapDefaultEntryHolder;->defaultEntry:Lcom/uqm/crashsight/protobuf/MapEntry;

    const/16 v2, 0xd

    .line 14596
    invoke-static {p1, v0, v1, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->serializeStringMapTo(Lcom/uqm/crashsight/protobuf/CodedOutputStream;Lcom/uqm/crashsight/protobuf/MapField;Lcom/uqm/crashsight/protobuf/MapEntry;I)V

    .line 14601
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->writeTo(Lcom/uqm/crashsight/protobuf/CodedOutputStream;)V

    return-void
.end method
