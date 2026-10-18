.class public final Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;
.super Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;
.source "CrashSight"

# interfaces
.implements Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRangeOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EnumReservedRange"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange$Builder;
    }
.end annotation


# static fields
.field public static final a:Lcom/uqm/crashsight/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/uqm/crashsight/protobuf/Parser<",
            "Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final f:Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;


# instance fields
.field private b:I

.field private c:I

.field private d:I

.field private e:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15753
    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;

    invoke-direct {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;-><init>()V

    sput-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;->f:Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;

    .line 15761
    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange$1;

    invoke-direct {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange$1;-><init>()V

    sput-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;->a:Lcom/uqm/crashsight/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 15155
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 15282
    iput-byte v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;->e:B

    return-void
.end method

.method private constructor <init>(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 15174
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;-><init>()V

    .line 15176
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15180
    invoke-static {}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_4

    .line 15184
    :try_start_0
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    const/16 v4, 0x8

    if-eq v2, v4, :cond_2

    const/16 v4, 0x10

    if-eq v2, v4, :cond_1

    .line 15200
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;->parseUnknownField(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 15195
    :cond_1
    iget v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;->b:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;->b:I

    .line 15196
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->f()I

    move-result v2

    iput v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;->d:I

    goto :goto_0

    .line 15190
    :cond_2
    iget v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;->b:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;->b:I

    .line 15191
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->f()I

    move-result v2

    iput v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;->c:I
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

    .line 15211
    :try_start_1
    new-instance p2, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 15212
    invoke-virtual {p2, p0}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->a(Lcom/uqm/crashsight/protobuf/MessageLite;)Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 15209
    invoke-virtual {p1, p0}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->a(Lcom/uqm/crashsight/protobuf/MessageLite;)Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15214
    :goto_2
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    .line 15215
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;->makeExtensionsImmutable()V

    .line 15216
    throw p1

    .line 15214
    :cond_4
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    .line 15215
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 15146
    invoke-direct {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;-><init>(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)V

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

    .line 15153
    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 15282
    iput-byte p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;->e:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;B)V
    .locals 0

    .line 15146
    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;I)I
    .locals 0

    .line 15146
    iput p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;->c:I

    return p1
.end method

.method static synthetic b(Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;I)I
    .locals 0

    .line 15146
    iput p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;->d:I

    return p1
.end method

.method static synthetic c(Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;I)I
    .locals 0

    .line 15146
    iput p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;->b:I

    return p1
.end method

.method public static e()Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;
    .locals 1

    .line 15757
    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;->f:Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;

    return-object v0
.end method

.method private f()Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange$Builder;
    .locals 2

    .line 15448
    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;->f:Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange$Builder;

    invoke-direct {v0, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange$Builder;-><init>(B)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange$Builder;

    invoke-direct {v0, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange$Builder;-><init>(B)V

    .line 15449
    invoke-virtual {v0, p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange$Builder;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()Z
    .locals 2

    .line 15243
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;->b:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final b()I
    .locals 1

    .line 15254
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;->c:I

    return v0
.end method

.method public final c()Z
    .locals 1

    .line 15268
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;->b:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final d()I
    .locals 1

    .line 15279
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;->d:I

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 15329
    :cond_0
    instance-of v1, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;

    if-nez v1, :cond_1

    .line 15330
    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 15332
    :cond_1
    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;

    .line 15334
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;->a()Z

    move-result v1

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;->a()Z

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    .line 15335
    :cond_2
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 16254
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;->c:I

    .line 17254
    iget v2, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;->c:I

    if-eq v1, v2, :cond_3

    return v3

    .line 15339
    :cond_3
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;->c()Z

    move-result v1

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;->c()Z

    move-result v2

    if-eq v1, v2, :cond_4

    return v3

    .line 15340
    :cond_4
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;->c()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 17279
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;->d:I

    .line 18279
    iget v2, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;->d:I

    if-eq v1, v2, :cond_5

    return v3

    .line 15344
    :cond_5
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v3

    :cond_6
    return v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/uqm/crashsight/protobuf/Message;
    .locals 1

    .line 22782
    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;->f:Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/uqm/crashsight/protobuf/MessageLite;
    .locals 1

    .line 21782
    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;->f:Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;

    return-object v0
.end method

.method public final getParserForType()Lcom/uqm/crashsight/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/uqm/crashsight/protobuf/Parser<",
            "Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;",
            ">;"
        }
    .end annotation

    .line 15777
    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;->a:Lcom/uqm/crashsight/protobuf/Parser;

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 3

    .line 15307
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 15311
    :cond_0
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;->b:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 15312
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;->c:I

    .line 15313
    invoke-static {v1, v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->d(II)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 15315
    :goto_0
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;->b:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-eqz v1, :cond_2

    .line 15316
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;->d:I

    .line 15317
    invoke-static {v2, v1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->d(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 15319
    :cond_2
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 15320
    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;
    .locals 1

    .line 15168
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    .line 15350
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 15351
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;->memoizedHashCode:I

    return v0

    .line 19220
    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos;->s()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move-result-object v0

    .line 15354
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    .line 15355
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 19254
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;->c:I

    add-int/2addr v0, v1

    .line 15359
    :cond_1
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 19279
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;->d:I

    add-int/2addr v0, v1

    :cond_2
    mul-int/lit8 v0, v0, 0x1d

    .line 15363
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 15364
    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;->memoizedHashCode:I

    return v0
.end method

.method protected final internalGetFieldAccessorTable()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 15226
    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos;->t()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;

    const-class v2, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange$Builder;

    .line 15227
    invoke-virtual {v0, v1, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 15285
    iget-byte v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;->e:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 15289
    :cond_1
    iput-byte v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;->e:B

    return v1
.end method

.method public final synthetic newBuilderForType()Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 1

    .line 20441
    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;->f:Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;

    invoke-direct {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;->f()Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic newBuilderForType(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 2

    .line 19455
    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange$Builder;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;B)V

    return-object v0
.end method

.method public final synthetic newBuilderForType()Lcom/uqm/crashsight/protobuf/MessageLite$Builder;
    .locals 1

    .line 21441
    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;->f:Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;

    invoke-direct {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;->f()Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newInstance(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 15162
    new-instance p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;

    invoke-direct {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;-><init>()V

    return-object p1
.end method

.method public final synthetic toBuilder()Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 1

    .line 15146
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;->f()Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic toBuilder()Lcom/uqm/crashsight/protobuf/MessageLite$Builder;
    .locals 1

    .line 15146
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;->f()Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange$Builder;

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

    .line 15296
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;->b:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 15297
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;->c:I

    invoke-virtual {p1, v1, v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->b(II)V

    .line 15299
    :cond_0
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;->b:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 15300
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;->d:I

    invoke-virtual {p1, v1, v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->b(II)V

    .line 15302
    :cond_1
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->writeTo(Lcom/uqm/crashsight/protobuf/CodedOutputStream;)V

    return-void
.end method
