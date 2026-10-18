.class public final Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;
.super Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;
.source "CrashSight"

# interfaces
.implements Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurityOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/crashreport/common/info/SightPkg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RqdSecurity"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;

.field public static final ENCKEY_FIELD_NUMBER:I = 0x1

.field public static final ENCPUBKEY_FIELD_NUMBER:I = 0x2

.field private static final PARSER:Lcom/uqm/crashsight/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/uqm/crashsight/protobuf/Parser<",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private volatile encKey_:Ljava/lang/Object;

.field private volatile encPubKey_:Ljava/lang/Object;

.field private memoizedIsInitialized:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18377
    new-instance v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;

    invoke-direct {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;-><init>()V

    sput-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;->DEFAULT_INSTANCE:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;

    .line 18385
    new-instance v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity$1;

    invoke-direct {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity$1;-><init>()V

    sput-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 17737
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 17888
    iput-byte v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;->memoizedIsInitialized:B

    .line 17738
    const-string v0, ""

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;->encKey_:Ljava/lang/Object;

    .line 17739
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;->encPubKey_:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 17758
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;-><init>()V

    .line 17760
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17763
    invoke-static {}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_4

    .line 17767
    :try_start_0
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    const/16 v4, 0xa

    if-eq v2, v4, :cond_2

    const/16 v4, 0x12

    if-eq v2, v4, :cond_1

    .line 17785
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;->parseUnknownField(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 17779
    :cond_1
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->k()Ljava/lang/String;

    move-result-object v2

    .line 17781
    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;->encPubKey_:Ljava/lang/Object;

    goto :goto_0

    .line 17773
    :cond_2
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->k()Ljava/lang/String;

    move-result-object v2

    .line 17775
    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;->encKey_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_3
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 17796
    :try_start_1
    new-instance p2, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 17797
    invoke-virtual {p2, p0}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->a(Lcom/uqm/crashsight/protobuf/MessageLite;)Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 17794
    invoke-virtual {p1, p0}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->a(Lcom/uqm/crashsight/protobuf/MessageLite;)Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17799
    :goto_2
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    .line 17800
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;->makeExtensionsImmutable()V

    .line 17801
    throw p1

    .line 17799
    :cond_4
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    .line 17800
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;Lcom/uqm/crashsight/crashreport/common/info/SightPkg$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 17728
    invoke-direct {p0, p1, p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;-><init>(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)V

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

    .line 17735
    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 17888
    iput-byte p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;Lcom/uqm/crashsight/crashreport/common/info/SightPkg$1;)V
    .locals 0

    .line 17728
    invoke-direct {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$25300()Z
    .locals 1

    .line 17728
    sget-boolean v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$25500(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;)Ljava/lang/Object;
    .locals 0

    .line 17728
    iget-object p0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;->encKey_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$25502(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 17728
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;->encKey_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$25600(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;)Ljava/lang/Object;
    .locals 0

    .line 17728
    iget-object p0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;->encPubKey_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$25602(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 17728
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;->encPubKey_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$25700(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;)Lcom/uqm/crashsight/protobuf/UnknownFieldSet;
    .locals 0

    .line 17728
    iget-object p0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method static synthetic access$25800()Lcom/uqm/crashsight/protobuf/Parser;
    .locals 1

    .line 17728
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    return-object v0
.end method

.method static synthetic access$25900(Lcom/uqm/crashsight/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 17728
    invoke-static {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;->checkByteStringIsUtf8(Lcom/uqm/crashsight/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$26000(Lcom/uqm/crashsight/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 17728
    invoke-static {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;->checkByteStringIsUtf8(Lcom/uqm/crashsight/protobuf/ByteString;)V

    return-void
.end method

.method public static getDefaultInstance()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;
    .locals 1

    .line 18381
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;->DEFAULT_INSTANCE:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 17805
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->access$24900()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity$Builder;
    .locals 1

    .line 18035
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;->DEFAULT_INSTANCE:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;->toBuilder()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity$Builder;
    .locals 1

    .line 18038
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;->DEFAULT_INSTANCE:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;->toBuilder()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity$Builder;->mergeFrom(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 18008
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    .line 18009
    invoke-static {v0, p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/uqm/crashsight/protobuf/Parser;Ljava/io/InputStream;)Lcom/uqm/crashsight/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 18015
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    .line 18016
    invoke-static {v0, p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/uqm/crashsight/protobuf/Parser;Ljava/io/InputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;

    return-object p0
.end method

.method public static parseFrom(Lcom/uqm/crashsight/protobuf/ByteString;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 17976
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/uqm/crashsight/protobuf/Parser;->parseFrom(Lcom/uqm/crashsight/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;

    return-object p0
.end method

.method public static parseFrom(Lcom/uqm/crashsight/protobuf/ByteString;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 17982
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/uqm/crashsight/protobuf/Parser;->parseFrom(Lcom/uqm/crashsight/protobuf/ByteString;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;

    return-object p0
.end method

.method public static parseFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 18021
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    .line 18022
    invoke-static {v0, p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/uqm/crashsight/protobuf/Parser;Lcom/uqm/crashsight/protobuf/CodedInputStream;)Lcom/uqm/crashsight/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;

    return-object p0
.end method

.method public static parseFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 18028
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    .line 18029
    invoke-static {v0, p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/uqm/crashsight/protobuf/Parser;Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 17996
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    .line 17997
    invoke-static {v0, p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/uqm/crashsight/protobuf/Parser;Ljava/io/InputStream;)Lcom/uqm/crashsight/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 18003
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    .line 18004
    invoke-static {v0, p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/uqm/crashsight/protobuf/Parser;Ljava/io/InputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 17965
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/uqm/crashsight/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 17971
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/uqm/crashsight/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 17986
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/uqm/crashsight/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;

    return-object p0
.end method

.method public static parseFrom([BLcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 17992
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/uqm/crashsight/protobuf/Parser;->parseFrom([BLcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;

    return-object p0
.end method

.method public static parser()Lcom/uqm/crashsight/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/uqm/crashsight/protobuf/Parser<",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;",
            ">;"
        }
    .end annotation

    .line 18396
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 17933
    :cond_0
    instance-of v1, p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;

    if-nez v1, :cond_1

    .line 17934
    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 17936
    :cond_1
    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;

    .line 17938
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;->getEncKey()Ljava/lang/String;

    move-result-object v1

    .line 17939
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;->getEncKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 17940
    :cond_2
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;->getEncPubKey()Ljava/lang/String;

    move-result-object v1

    .line 17941
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;->getEncPubKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 17942
    :cond_3
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getDefaultInstanceForType()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;
    .locals 1

    .line 18406
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;->DEFAULT_INSTANCE:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/uqm/crashsight/protobuf/Message;
    .locals 1

    .line 17728
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;->getDefaultInstanceForType()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/uqm/crashsight/protobuf/MessageLite;
    .locals 1

    .line 17728
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;->getDefaultInstanceForType()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;

    move-result-object v0

    return-object v0
.end method

.method public final getEncKey()Ljava/lang/String;
    .locals 2

    .line 17823
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;->encKey_:Ljava/lang/Object;

    .line 17824
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 17825
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 17827
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 17829
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v0

    .line 17830
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;->encKey_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getEncKeyBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    .line 17840
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;->encKey_:Ljava/lang/Object;

    .line 17841
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 17842
    check-cast v0, Ljava/lang/String;

    .line 17843
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    .line 17845
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;->encKey_:Ljava/lang/Object;

    return-object v0

    .line 17848
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final getEncPubKey()Ljava/lang/String;
    .locals 2

    .line 17859
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;->encPubKey_:Ljava/lang/Object;

    .line 17860
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 17861
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 17863
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 17865
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v0

    .line 17866
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;->encPubKey_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getEncPubKeyBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    .line 17876
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;->encPubKey_:Ljava/lang/Object;

    .line 17877
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 17878
    check-cast v0, Ljava/lang/String;

    .line 17879
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    .line 17881
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;->encPubKey_:Ljava/lang/Object;

    return-object v0

    .line 17884
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
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;",
            ">;"
        }
    .end annotation

    .line 18401
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 3

    .line 17913
    iget v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 17917
    :cond_0
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;->getEncKeyBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->c()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 17918
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;->encKey_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 17920
    :goto_0
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;->getEncPubKeyBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/ByteString;->c()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x2

    .line 17921
    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;->encPubKey_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 17923
    :cond_2
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 17924
    iput v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;
    .locals 1

    .line 17752
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    .line 17948
    iget v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 17949
    iget v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;->memoizedHashCode:I

    return v0

    .line 17952
    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;->getDescriptor()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 17954
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;->getEncKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 17956
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;->getEncPubKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1d

    .line 17957
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 17958
    iput v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;->memoizedHashCode:I

    return v0
.end method

.method protected final internalGetFieldAccessorTable()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 17811
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->access$25000()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;

    const-class v2, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity$Builder;

    .line 17812
    invoke-virtual {v0, v1, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 17891
    iget-byte v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 17895
    :cond_1
    iput-byte v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;->memoizedIsInitialized:B

    return v1
.end method

.method public final newBuilderForType()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity$Builder;
    .locals 1

    .line 18033
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;->newBuilder()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newBuilderForType(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity$Builder;
    .locals 2

    .line 18049
    new-instance v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity$Builder;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;Lcom/uqm/crashsight/crashreport/common/info/SightPkg$1;)V

    return-object v0
.end method

.method public final bridge synthetic newBuilderForType()Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 1

    .line 17728
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;->newBuilderForType()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic newBuilderForType(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    .line 17728
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;->newBuilderForType(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic newBuilderForType()Lcom/uqm/crashsight/protobuf/MessageLite$Builder;
    .locals 1

    .line 17728
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;->newBuilderForType()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newInstance(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 17746
    new-instance p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;

    invoke-direct {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;-><init>()V

    return-object p1
.end method

.method public final toBuilder()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity$Builder;
    .locals 2

    .line 18042
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;->DEFAULT_INSTANCE:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity$Builder;

    invoke-direct {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity$Builder;-><init>(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$1;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity$Builder;

    invoke-direct {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity$Builder;-><init>(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$1;)V

    .line 18043
    invoke-virtual {v0, p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity$Builder;->mergeFrom(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 1

    .line 17728
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;->toBuilder()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/uqm/crashsight/protobuf/MessageLite$Builder;
    .locals 1

    .line 17728
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;->toBuilder()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/uqm/crashsight/protobuf/CodedOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 17902
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;->getEncKeyBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 17903
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;->encKey_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->writeString(Lcom/uqm/crashsight/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 17905
    :cond_0
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;->getEncPubKeyBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->c()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    .line 17906
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;->encPubKey_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->writeString(Lcom/uqm/crashsight/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 17908
    :cond_1
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->writeTo(Lcom/uqm/crashsight/protobuf/CodedOutputStream;)V

    return-void
.end method
