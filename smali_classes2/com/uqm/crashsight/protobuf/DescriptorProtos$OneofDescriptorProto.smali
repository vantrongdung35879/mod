.class public final Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofDescriptorProto;
.super Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;
.source "CrashSight"

# interfaces
.implements Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofDescriptorProtoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/protobuf/DescriptorProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OneofDescriptorProto"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;
    }
.end annotation


# static fields
.field public static final a:Lcom/uqm/crashsight/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/uqm/crashsight/protobuf/Parser<",
            "Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofDescriptorProto;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final f:Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofDescriptorProto;


# instance fields
.field private b:I

.field private volatile c:Ljava/lang/Object;

.field private d:Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofOptions;

.field private e:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14759
    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofDescriptorProto;

    invoke-direct {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofDescriptorProto;-><init>()V

    sput-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofDescriptorProto;->f:Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofDescriptorProto;

    .line 14767
    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofDescriptorProto$1;

    invoke-direct {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofDescriptorProto$1;-><init>()V

    sput-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofDescriptorProto;->a:Lcom/uqm/crashsight/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 14018
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 14173
    iput-byte v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofDescriptorProto;->e:B

    .line 14019
    const-string v0, ""

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofDescriptorProto;->c:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 14038
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofDescriptorProto;-><init>()V

    .line 14040
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14044
    invoke-static {}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_6

    .line 14048
    :try_start_0
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_5

    const/16 v4, 0xa

    if-eq v2, v4, :cond_4

    const/16 v4, 0x12

    if-eq v2, v4, :cond_1

    .line 14073
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofDescriptorProto;->parseUnknownField(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_2

    .line 14061
    :cond_1
    iget v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofDescriptorProto;->b:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_2

    .line 14062
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofDescriptorProto;->d:Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofOptions;

    invoke-virtual {v2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofOptions;->a()Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofOptions$Builder;

    move-result-object v2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 14064
    :goto_1
    sget-object v3, Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofOptions;->a:Lcom/uqm/crashsight/protobuf/Parser;

    invoke-virtual {p1, v3, p2}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a(Lcom/uqm/crashsight/protobuf/Parser;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofOptions;

    iput-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofDescriptorProto;->d:Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofOptions;

    if-eqz v2, :cond_3

    .line 14066
    invoke-virtual {v2, v3}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofOptions$Builder;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofOptions;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofOptions$Builder;

    .line 14067
    invoke-virtual {v2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofOptions$Builder;->a()Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofOptions;

    move-result-object v2

    iput-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofDescriptorProto;->d:Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofOptions;

    .line 14069
    :cond_3
    iget v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofDescriptorProto;->b:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofDescriptorProto;->b:I

    goto :goto_0

    .line 14054
    :cond_4
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->l()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v2

    .line 14055
    iget v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofDescriptorProto;->b:I

    or-int/2addr v3, v4

    iput v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofDescriptorProto;->b:I

    .line 14056
    iput-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofDescriptorProto;->c:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_5
    :goto_2
    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 14084
    :try_start_1
    new-instance p2, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 14085
    invoke-virtual {p2, p0}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->a(Lcom/uqm/crashsight/protobuf/MessageLite;)Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 14082
    invoke-virtual {p1, p0}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->a(Lcom/uqm/crashsight/protobuf/MessageLite;)Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14087
    :goto_3
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofDescriptorProto;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    .line 14088
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofDescriptorProto;->makeExtensionsImmutable()V

    .line 14089
    throw p1

    .line 14087
    :cond_6
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofDescriptorProto;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    .line 14088
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofDescriptorProto;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 14009
    invoke-direct {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofDescriptorProto;-><init>(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)V

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

    .line 14016
    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 14173
    iput-byte p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofDescriptorProto;->e:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;B)V
    .locals 0

    .line 14009
    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofDescriptorProto;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofDescriptorProto;I)I
    .locals 0

    .line 14009
    iput p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofDescriptorProto;->b:I

    return p1
.end method

.method static synthetic a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofDescriptorProto;Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofOptions;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofOptions;
    .locals 0

    .line 14009
    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofDescriptorProto;->d:Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofOptions;

    return-object p1
.end method

.method static synthetic a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofDescriptorProto;)Ljava/lang/Object;
    .locals 0

    .line 14009
    iget-object p0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofDescriptorProto;->c:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofDescriptorProto;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 14009
    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofDescriptorProto;->c:Ljava/lang/Object;

    return-object p1
.end method

.method public static e()Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofDescriptorProto;
    .locals 1

    .line 14763
    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofDescriptorProto;->f:Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofDescriptorProto;

    return-object v0
.end method

.method private f()Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;
    .locals 2

    .line 14344
    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofDescriptorProto;->f:Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofDescriptorProto;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;

    invoke-direct {v0, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;-><init>(B)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;

    invoke-direct {v0, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;-><init>(B)V

    .line 14345
    invoke-virtual {v0, p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofDescriptorProto;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()Z
    .locals 2

    .line 14112
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofDescriptorProto;->b:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    .line 14119
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofDescriptorProto;->c:Ljava/lang/Object;

    .line 14120
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 14121
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 14123
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 14125
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v1

    .line 14126
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 14127
    iput-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofDescriptorProto;->c:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public final c()Z
    .locals 1

    .line 14157
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofDescriptorProto;->b:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final d()Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofOptions;
    .locals 1

    .line 14164
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofDescriptorProto;->d:Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofOptions;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofOptions;->b()Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofOptions;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 14225
    :cond_0
    instance-of v1, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofDescriptorProto;

    if-nez v1, :cond_1

    .line 14226
    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 14228
    :cond_1
    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofDescriptorProto;

    .line 14230
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofDescriptorProto;->a()Z

    move-result v1

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofDescriptorProto;->a()Z

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    .line 14231
    :cond_2
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofDescriptorProto;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 14232
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofDescriptorProto;->b()Ljava/lang/String;

    move-result-object v1

    .line 14233
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofDescriptorProto;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v3

    .line 14235
    :cond_3
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofDescriptorProto;->c()Z

    move-result v1

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofDescriptorProto;->c()Z

    move-result v2

    if-eq v1, v2, :cond_4

    return v3

    .line 14236
    :cond_4
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofDescriptorProto;->c()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 14237
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofDescriptorProto;->d()Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofOptions;

    move-result-object v1

    .line 14238
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofDescriptorProto;->d()Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofOptions;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofOptions;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v3

    .line 14240
    :cond_5
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofDescriptorProto;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofDescriptorProto;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v3

    :cond_6
    return v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/uqm/crashsight/protobuf/Message;
    .locals 1

    .line 18788
    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofDescriptorProto;->f:Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofDescriptorProto;

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/uqm/crashsight/protobuf/MessageLite;
    .locals 1

    .line 17788
    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofDescriptorProto;->f:Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofDescriptorProto;

    return-object v0
.end method

.method public final getParserForType()Lcom/uqm/crashsight/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/uqm/crashsight/protobuf/Parser<",
            "Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofDescriptorProto;",
            ">;"
        }
    .end annotation

    .line 14783
    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofDescriptorProto;->a:Lcom/uqm/crashsight/protobuf/Parser;

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 3

    .line 14204
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofDescriptorProto;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 14208
    :cond_0
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofDescriptorProto;->b:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 14209
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofDescriptorProto;->c:Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 14211
    :goto_0
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofDescriptorProto;->b:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-eqz v1, :cond_2

    .line 14213
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofDescriptorProto;->d()Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofOptions;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->c(ILcom/uqm/crashsight/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 14215
    :cond_2
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofDescriptorProto;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 14216
    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofDescriptorProto;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;
    .locals 1

    .line 14032
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofDescriptorProto;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    .line 14246
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofDescriptorProto;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 14247
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofDescriptorProto;->memoizedHashCode:I

    return v0

    .line 15093
    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos;->o()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move-result-object v0

    .line 14250
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    .line 14251
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofDescriptorProto;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 14253
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofDescriptorProto;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 14255
    :cond_1
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofDescriptorProto;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 14257
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofDescriptorProto;->d()Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofOptions;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    mul-int/lit8 v0, v0, 0x1d

    .line 14259
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofDescriptorProto;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 14260
    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofDescriptorProto;->memoizedHashCode:I

    return v0
.end method

.method protected final internalGetFieldAccessorTable()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 14099
    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos;->p()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofDescriptorProto;

    const-class v2, Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;

    .line 14100
    invoke-virtual {v0, v1, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .line 14176
    iget-byte v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofDescriptorProto;->e:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 14180
    :cond_1
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofDescriptorProto;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 14181
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofDescriptorProto;->d()Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofOptions;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_2

    .line 14182
    iput-byte v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofDescriptorProto;->e:B

    return v2

    .line 14186
    :cond_2
    iput-byte v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofDescriptorProto;->e:B

    return v1
.end method

.method public final synthetic newBuilderForType()Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 1

    .line 16337
    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofDescriptorProto;->f:Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofDescriptorProto;

    invoke-direct {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofDescriptorProto;->f()Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic newBuilderForType(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 2

    .line 15351
    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;B)V

    return-object v0
.end method

.method public final synthetic newBuilderForType()Lcom/uqm/crashsight/protobuf/MessageLite$Builder;
    .locals 1

    .line 17337
    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofDescriptorProto;->f:Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofDescriptorProto;

    invoke-direct {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofDescriptorProto;->f()Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newInstance(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 14026
    new-instance p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofDescriptorProto;

    invoke-direct {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofDescriptorProto;-><init>()V

    return-object p1
.end method

.method public final synthetic toBuilder()Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 1

    .line 14009
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofDescriptorProto;->f()Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic toBuilder()Lcom/uqm/crashsight/protobuf/MessageLite$Builder;
    .locals 1

    .line 14009
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofDescriptorProto;->f()Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;

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

    .line 14193
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofDescriptorProto;->b:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 14194
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofDescriptorProto;->c:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->writeString(Lcom/uqm/crashsight/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 14196
    :cond_0
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofDescriptorProto;->b:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 14197
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofDescriptorProto;->d()Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofOptions;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(ILcom/uqm/crashsight/protobuf/MessageLite;)V

    .line 14199
    :cond_1
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofDescriptorProto;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->writeTo(Lcom/uqm/crashsight/protobuf/CodedOutputStream;)V

    return-void
.end method
