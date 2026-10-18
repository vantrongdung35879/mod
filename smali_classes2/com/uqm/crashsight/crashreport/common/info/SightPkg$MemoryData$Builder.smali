.class public final Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData$Builder;
.super Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
.source "CrashSight"

# interfaces
.implements Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData$Builder;",
        ">;",
        "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryDataOrBuilder;"
    }
.end annotation


# instance fields
.field private beginAddress_:J

.field private data_:Lcom/uqm/crashsight/protobuf/ByteString;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 329
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 491
    sget-object v0, Lcom/uqm/crashsight/protobuf/ByteString;->a:Lcom/uqm/crashsight/protobuf/ByteString;

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData$Builder;->data_:Lcom/uqm/crashsight/protobuf/ByteString;

    .line 330
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$1;)V
    .locals 0

    .line 311
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 335
    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 491
    sget-object p1, Lcom/uqm/crashsight/protobuf/ByteString;->a:Lcom/uqm/crashsight/protobuf/ByteString;

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData$Builder;->data_:Lcom/uqm/crashsight/protobuf/ByteString;

    .line 336
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;Lcom/uqm/crashsight/crashreport/common/info/SightPkg$1;)V
    .locals 0

    .line 311
    invoke-direct {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData$Builder;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public static final getDescriptor()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 317
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->access$000()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 340
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData;->access$400()Z

    return-void
.end method


# virtual methods
.method public final addRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData$Builder;
    .locals 0

    .line 412
    invoke-super {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData$Builder;

    return-object p1
.end method

.method public final bridge synthetic addRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 311
    invoke-virtual {p0, p1, p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData$Builder;->addRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic addRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    .line 311
    invoke-virtual {p0, p1, p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData$Builder;->addRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final build()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData;
    .locals 2

    .line 366
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData$Builder;->buildPartial()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData;

    move-result-object v0

    .line 367
    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 368
    :cond_0
    invoke-static {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData$Builder;->newUninitializedMessageException(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public final bridge synthetic build()Lcom/uqm/crashsight/protobuf/Message;
    .locals 1

    .line 311
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData$Builder;->build()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/uqm/crashsight/protobuf/MessageLite;
    .locals 1

    .line 311
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData$Builder;->build()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData;

    move-result-object v0

    return-object v0
.end method

.method public final buildPartial()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData;
    .locals 3

    .line 375
    new-instance v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;Lcom/uqm/crashsight/crashreport/common/info/SightPkg$1;)V

    .line 376
    iget-wide v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData$Builder;->beginAddress_:J

    invoke-static {v0, v1, v2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData;->access$602(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData;J)J

    .line 377
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData$Builder;->data_:Lcom/uqm/crashsight/protobuf/ByteString;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData;->access$702(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData;Lcom/uqm/crashsight/protobuf/ByteString;)Lcom/uqm/crashsight/protobuf/ByteString;

    .line 378
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData$Builder;->onBuilt()V

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/uqm/crashsight/protobuf/Message;
    .locals 1

    .line 311
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData$Builder;->buildPartial()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/uqm/crashsight/protobuf/MessageLite;
    .locals 1

    .line 311
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData$Builder;->buildPartial()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData;

    move-result-object v0

    return-object v0
.end method

.method public final clear()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData$Builder;
    .locals 2

    .line 345
    invoke-super {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    const-wide/16 v0, 0x0

    .line 346
    iput-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData$Builder;->beginAddress_:J

    .line 348
    sget-object v0, Lcom/uqm/crashsight/protobuf/ByteString;->a:Lcom/uqm/crashsight/protobuf/ByteString;

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData$Builder;->data_:Lcom/uqm/crashsight/protobuf/ByteString;

    return-object p0
.end method

.method public final bridge synthetic clear()Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 311
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData$Builder;->clear()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 311
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData$Builder;->clear()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 1

    .line 311
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData$Builder;->clear()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/uqm/crashsight/protobuf/MessageLite$Builder;
    .locals 1

    .line 311
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData$Builder;->clear()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clearBeginAddress()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData$Builder;
    .locals 2

    const-wide/16 v0, 0x0

    .line 486
    iput-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData$Builder;->beginAddress_:J

    .line 487
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearData()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData$Builder;
    .locals 1

    .line 519
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData;->getDefaultInstance()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData;->getData()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData$Builder;->data_:Lcom/uqm/crashsight/protobuf/ByteString;

    .line 520
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData$Builder;
    .locals 0

    .line 395
    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData$Builder;

    return-object p1
.end method

.method public final bridge synthetic clearField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 311
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData$Builder;->clearField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    .line 311
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData$Builder;->clearField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData$Builder;
    .locals 0

    .line 400
    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData$Builder;

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 311
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData$Builder;->clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 311
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData$Builder;->clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    .line 311
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData$Builder;->clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clone()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData$Builder;
    .locals 1

    .line 384
    invoke-super {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData$Builder;

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 311
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData$Builder;->clone()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/uqm/crashsight/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 311
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData$Builder;->clone()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 311
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData$Builder;->clone()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 1

    .line 311
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData$Builder;->clone()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/uqm/crashsight/protobuf/MessageLite$Builder;
    .locals 1

    .line 311
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData$Builder;->clone()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 311
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData$Builder;->clone()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final getBeginAddress()J
    .locals 2

    .line 467
    iget-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData$Builder;->beginAddress_:J

    return-wide v0
.end method

.method public final getData()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 1

    .line 497
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData$Builder;->data_:Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData;
    .locals 1

    .line 361
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData;->getDefaultInstance()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/uqm/crashsight/protobuf/Message;
    .locals 1

    .line 311
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData$Builder;->getDefaultInstanceForType()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/uqm/crashsight/protobuf/MessageLite;
    .locals 1

    .line 311
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData$Builder;->getDefaultInstanceForType()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData;

    move-result-object v0

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 356
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->access$000()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method protected final internalGetFieldAccessorTable()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 323
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->access$100()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData;

    const-class v2, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData$Builder;

    .line 324
    invoke-virtual {v0, v1, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final mergeFrom(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData$Builder;
    .locals 5

    .line 425
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData;->getDefaultInstance()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 426
    :cond_0
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData;->getBeginAddress()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 427
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData;->getBeginAddress()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData$Builder;->setBeginAddress(J)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData$Builder;

    .line 429
    :cond_1
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData;->getData()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    sget-object v1, Lcom/uqm/crashsight/protobuf/ByteString;->a:Lcom/uqm/crashsight/protobuf/ByteString;

    if-eq v0, v1, :cond_2

    .line 430
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData;->getData()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData$Builder;->setData(Lcom/uqm/crashsight/protobuf/ByteString;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData$Builder;

    .line 432
    :cond_2
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData;->access$800(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData;)Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData$Builder;->mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData$Builder;

    .line 433
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData$Builder;->onChanged()V

    return-object p0
.end method

.method public final mergeFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 449
    :try_start_0
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData;->access$900()Lcom/uqm/crashsight/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/uqm/crashsight/protobuf/Parser;->parsePartialFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData;
    :try_end_0
    .catch Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 455
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData$Builder;->mergeFrom(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 451
    :try_start_1
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->a()Lcom/uqm/crashsight/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 452
    :try_start_2
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->b()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_1

    .line 455
    invoke-virtual {p0, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData$Builder;->mergeFrom(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData$Builder;

    .line 457
    :cond_1
    throw p1
.end method

.method public final mergeFrom(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData$Builder;
    .locals 1

    .line 416
    instance-of v0, p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData;

    if-eqz v0, :cond_0

    .line 417
    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData;

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData$Builder;->mergeFrom(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData$Builder;

    move-result-object p1

    return-object p1

    .line 419
    :cond_0
    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public final bridge synthetic mergeFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 311
    invoke-virtual {p0, p1, p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData$Builder;->mergeFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 311
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData$Builder;->mergeFrom(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/AbstractMessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 311
    invoke-virtual {p0, p1, p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData$Builder;->mergeFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 311
    invoke-virtual {p0, p1, p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData$Builder;->mergeFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    .line 311
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData$Builder;->mergeFrom(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 311
    invoke-virtual {p0, p1, p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData$Builder;->mergeFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData$Builder;
    .locals 0

    .line 532
    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData$Builder;

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 311
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData$Builder;->mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 311
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData$Builder;->mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    .line 311
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData$Builder;->mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setBeginAddress(J)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData$Builder;
    .locals 0

    .line 476
    iput-wide p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData$Builder;->beginAddress_:J

    .line 477
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData$Builder;->onChanged()V

    return-object p0
.end method

.method public final setData(Lcom/uqm/crashsight/protobuf/ByteString;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData$Builder;
    .locals 0

    .line 506
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 509
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData$Builder;->data_:Lcom/uqm/crashsight/protobuf/ByteString;

    .line 510
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData$Builder;->onChanged()V

    return-object p0
.end method

.method public final setField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData$Builder;
    .locals 0

    .line 390
    invoke-super {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData$Builder;

    return-object p1
.end method

.method public final bridge synthetic setField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 311
    invoke-virtual {p0, p1, p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData$Builder;->setField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    .line 311
    invoke-virtual {p0, p1, p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData$Builder;->setField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData$Builder;
    .locals 0

    .line 406
    invoke-super {p0, p1, p2, p3}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData$Builder;

    return-object p1
.end method

.method public final bridge synthetic setRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 311
    invoke-virtual {p0, p1, p2, p3}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData$Builder;->setRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    .line 311
    invoke-virtual {p0, p1, p2, p3}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData$Builder;->setRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData$Builder;
    .locals 0

    .line 526
    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData$Builder;

    return-object p1
.end method

.method public final bridge synthetic setUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 311
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData$Builder;->setUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    .line 311
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData$Builder;->setUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$MemoryData$Builder;

    move-result-object p1

    return-object p1
.end method
