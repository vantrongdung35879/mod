.class public final Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;
.super Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
.source "CrashSight"

# interfaces
.implements Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachmentOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;",
        ">;",
        "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachmentOrBuilder;"
    }
.end annotation


# instance fields
.field private data_:Lcom/uqm/crashsight/protobuf/ByteString;

.field private fileName_:Ljava/lang/Object;

.field private type_:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 21041
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 21210
    const-string v0, ""

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;->fileName_:Ljava/lang/Object;

    .line 21286
    sget-object v0, Lcom/uqm/crashsight/protobuf/ByteString;->a:Lcom/uqm/crashsight/protobuf/ByteString;

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;->data_:Lcom/uqm/crashsight/protobuf/ByteString;

    .line 21042
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$1;)V
    .locals 0

    .line 21023
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 21047
    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 21210
    const-string p1, ""

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;->fileName_:Ljava/lang/Object;

    .line 21286
    sget-object p1, Lcom/uqm/crashsight/protobuf/ByteString;->a:Lcom/uqm/crashsight/protobuf/ByteString;

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;->data_:Lcom/uqm/crashsight/protobuf/ByteString;

    .line 21048
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;Lcom/uqm/crashsight/crashreport/common/info/SightPkg$1;)V
    .locals 0

    .line 21023
    invoke-direct {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public static final getDescriptor()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 21029
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->access$29700()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 21052
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment;->access$30100()Z

    return-void
.end method


# virtual methods
.method public final addRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;
    .locals 0

    .line 21127
    invoke-super {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;

    return-object p1
.end method

.method public final bridge synthetic addRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 21023
    invoke-virtual {p0, p1, p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;->addRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic addRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    .line 21023
    invoke-virtual {p0, p1, p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;->addRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final build()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment;
    .locals 2

    .line 21080
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;->buildPartial()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment;

    move-result-object v0

    .line 21081
    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 21082
    :cond_0
    invoke-static {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;->newUninitializedMessageException(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public final bridge synthetic build()Lcom/uqm/crashsight/protobuf/Message;
    .locals 1

    .line 21023
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;->build()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/uqm/crashsight/protobuf/MessageLite;
    .locals 1

    .line 21023
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;->build()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment;

    move-result-object v0

    return-object v0
.end method

.method public final buildPartial()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment;
    .locals 2

    .line 21089
    new-instance v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;Lcom/uqm/crashsight/crashreport/common/info/SightPkg$1;)V

    .line 21090
    iget v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;->type_:I

    invoke-static {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment;->access$30302(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment;I)I

    .line 21091
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;->fileName_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment;->access$30402(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21092
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;->data_:Lcom/uqm/crashsight/protobuf/ByteString;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment;->access$30502(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment;Lcom/uqm/crashsight/protobuf/ByteString;)Lcom/uqm/crashsight/protobuf/ByteString;

    .line 21093
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;->onBuilt()V

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/uqm/crashsight/protobuf/Message;
    .locals 1

    .line 21023
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;->buildPartial()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/uqm/crashsight/protobuf/MessageLite;
    .locals 1

    .line 21023
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;->buildPartial()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment;

    move-result-object v0

    return-object v0
.end method

.method public final clear()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;
    .locals 1

    .line 21057
    invoke-super {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    const/4 v0, 0x0

    .line 21058
    iput v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;->type_:I

    .line 21060
    const-string v0, ""

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;->fileName_:Ljava/lang/Object;

    .line 21062
    sget-object v0, Lcom/uqm/crashsight/protobuf/ByteString;->a:Lcom/uqm/crashsight/protobuf/ByteString;

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;->data_:Lcom/uqm/crashsight/protobuf/ByteString;

    return-object p0
.end method

.method public final bridge synthetic clear()Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 21023
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;->clear()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 21023
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;->clear()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 1

    .line 21023
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;->clear()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/uqm/crashsight/protobuf/MessageLite$Builder;
    .locals 1

    .line 21023
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;->clear()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clearData()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;
    .locals 1

    .line 21314
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment;->getDefaultInstance()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment;->getData()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;->data_:Lcom/uqm/crashsight/protobuf/ByteString;

    .line 21315
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;
    .locals 0

    .line 21110
    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;

    return-object p1
.end method

.method public final bridge synthetic clearField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 21023
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;->clearField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    .line 21023
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;->clearField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearFileName()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;
    .locals 1

    .line 21265
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment;->getDefaultInstance()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment;->getFileName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;->fileName_:Ljava/lang/Object;

    .line 21266
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;
    .locals 0

    .line 21115
    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 21023
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;->clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 21023
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;->clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    .line 21023
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;->clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearType()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 21205
    iput v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;->type_:I

    .line 21206
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;->onChanged()V

    return-object p0
.end method

.method public final clone()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;
    .locals 1

    .line 21099
    invoke-super {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 21023
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;->clone()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/uqm/crashsight/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 21023
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;->clone()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 21023
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;->clone()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 1

    .line 21023
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;->clone()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/uqm/crashsight/protobuf/MessageLite$Builder;
    .locals 1

    .line 21023
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;->clone()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;

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

    .line 21023
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;->clone()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final getData()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 1

    .line 21292
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;->data_:Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment;
    .locals 1

    .line 21075
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment;->getDefaultInstance()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/uqm/crashsight/protobuf/Message;
    .locals 1

    .line 21023
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;->getDefaultInstanceForType()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/uqm/crashsight/protobuf/MessageLite;
    .locals 1

    .line 21023
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;->getDefaultInstanceForType()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment;

    move-result-object v0

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 21070
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->access$29700()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getFileName()Ljava/lang/String;
    .locals 2

    .line 21216
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;->fileName_:Ljava/lang/Object;

    .line 21217
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 21218
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 21220
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v0

    .line 21221
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;->fileName_:Ljava/lang/Object;

    return-object v0

    .line 21224
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getFileNameBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    .line 21233
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;->fileName_:Ljava/lang/Object;

    .line 21234
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 21235
    check-cast v0, Ljava/lang/String;

    .line 21236
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    .line 21238
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;->fileName_:Ljava/lang/Object;

    return-object v0

    .line 21241
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final getType()I
    .locals 1

    .line 21186
    iget v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;->type_:I

    return v0
.end method

.method protected final internalGetFieldAccessorTable()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 21035
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->access$29800()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment;

    const-class v2, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;

    .line 21036
    invoke-virtual {v0, v1, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final mergeFrom(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;
    .locals 2

    .line 21140
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment;->getDefaultInstance()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 21141
    :cond_0
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment;->getType()I

    move-result v0

    if-eqz v0, :cond_1

    .line 21142
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment;->getType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;->setType(I)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;

    .line 21144
    :cond_1
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 21145
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment;->access$30400(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;->fileName_:Ljava/lang/Object;

    .line 21146
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;->onChanged()V

    .line 21148
    :cond_2
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment;->getData()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    sget-object v1, Lcom/uqm/crashsight/protobuf/ByteString;->a:Lcom/uqm/crashsight/protobuf/ByteString;

    if-eq v0, v1, :cond_3

    .line 21149
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment;->getData()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;->setData(Lcom/uqm/crashsight/protobuf/ByteString;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;

    .line 21151
    :cond_3
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment;->access$30600(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment;)Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;->mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;

    .line 21152
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;->onChanged()V

    return-object p0
.end method

.method public final mergeFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 21168
    :try_start_0
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment;->access$30700()Lcom/uqm/crashsight/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/uqm/crashsight/protobuf/Parser;->parsePartialFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment;
    :try_end_0
    .catch Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 21174
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;->mergeFrom(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 21170
    :try_start_1
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->a()Lcom/uqm/crashsight/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21171
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

    .line 21174
    invoke-virtual {p0, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;->mergeFrom(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;

    .line 21176
    :cond_1
    throw p1
.end method

.method public final mergeFrom(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;
    .locals 1

    .line 21131
    instance-of v0, p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment;

    if-eqz v0, :cond_0

    .line 21132
    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment;

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;->mergeFrom(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;

    move-result-object p1

    return-object p1

    .line 21134
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

    .line 21023
    invoke-virtual {p0, p1, p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;->mergeFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 21023
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;->mergeFrom(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;

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

    .line 21023
    invoke-virtual {p0, p1, p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;->mergeFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;

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

    .line 21023
    invoke-virtual {p0, p1, p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;->mergeFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    .line 21023
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;->mergeFrom(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;

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

    .line 21023
    invoke-virtual {p0, p1, p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;->mergeFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;
    .locals 0

    .line 21327
    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 21023
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;->mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 21023
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;->mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    .line 21023
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;->mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setData(Lcom/uqm/crashsight/protobuf/ByteString;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;
    .locals 0

    .line 21301
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21304
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;->data_:Lcom/uqm/crashsight/protobuf/ByteString;

    .line 21305
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;->onChanged()V

    return-object p0
.end method

.method public final setField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;
    .locals 0

    .line 21105
    invoke-super {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;

    return-object p1
.end method

.method public final bridge synthetic setField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 21023
    invoke-virtual {p0, p1, p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;->setField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    .line 21023
    invoke-virtual {p0, p1, p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;->setField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setFileName(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;
    .locals 0

    .line 21252
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21255
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;->fileName_:Ljava/lang/Object;

    .line 21256
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;->onChanged()V

    return-object p0
.end method

.method public final setFileNameBytes(Lcom/uqm/crashsight/protobuf/ByteString;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;
    .locals 0

    .line 21277
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21279
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment;->access$30800(Lcom/uqm/crashsight/protobuf/ByteString;)V

    .line 21281
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;->fileName_:Ljava/lang/Object;

    .line 21282
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;->onChanged()V

    return-object p0
.end method

.method public final setRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;
    .locals 0

    .line 21121
    invoke-super {p0, p1, p2, p3}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;

    return-object p1
.end method

.method public final bridge synthetic setRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 21023
    invoke-virtual {p0, p1, p2, p3}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;->setRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    .line 21023
    invoke-virtual {p0, p1, p2, p3}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;->setRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setType(I)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;
    .locals 0

    .line 21195
    iput p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;->type_:I

    .line 21196
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;->onChanged()V

    return-object p0
.end method

.method public final setUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;
    .locals 0

    .line 21321
    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;

    return-object p1
.end method

.method public final bridge synthetic setUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 21023
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;->setUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    .line 21023
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;->setUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;

    move-result-object p1

    return-object p1
.end method
