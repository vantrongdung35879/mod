.class public final Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;
.super Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
.source "CrashSight"

# interfaces
.implements Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacketOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;",
        ">;",
        "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacketOrBuilder;"
    }
.end annotation


# instance fields
.field private encodeName_:Ljava/lang/Object;

.field private iRequestId_:I

.field private iVersion_:I

.field private requestBuilder_:Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3<",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkgOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private request_:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;

.field private responseBuilder_:Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3<",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkgOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private response_:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;

.field private sFuncName_:Ljava/lang/Object;

.field private sServantName_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 8858
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 9069
    const-string v0, ""

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->encodeName_:Ljava/lang/Object;

    .line 9175
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->sServantName_:Ljava/lang/Object;

    .line 9251
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->sFuncName_:Ljava/lang/Object;

    .line 8859
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$1;)V
    .locals 0

    .line 8840
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 8864
    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 9069
    const-string p1, ""

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->encodeName_:Ljava/lang/Object;

    .line 9175
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->sServantName_:Ljava/lang/Object;

    .line 9251
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->sFuncName_:Ljava/lang/Object;

    .line 8865
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;Lcom/uqm/crashsight/crashreport/common/info/SightPkg$1;)V
    .locals 0

    .line 8840
    invoke-direct {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public static final getDescriptor()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 8846
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->access$11800()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getRequestFieldBuilder()Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3<",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkgOrBuilder;",
            ">;"
        }
    .end annotation

    .line 9435
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->requestBuilder_:Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 9436
    new-instance v0, Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;

    .line 9438
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->getRequest()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;

    move-result-object v1

    .line 9439
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->getParentForChildren()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 9440
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;-><init>(Lcom/uqm/crashsight/protobuf/AbstractMessage;Lcom/uqm/crashsight/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->requestBuilder_:Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 9441
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->request_:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;

    .line 9443
    :cond_0
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->requestBuilder_:Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getResponseFieldBuilder()Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3<",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkgOrBuilder;",
            ">;"
        }
    .end annotation

    .line 9554
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->responseBuilder_:Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 9555
    new-instance v0, Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;

    .line 9557
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->getResponse()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;

    move-result-object v1

    .line 9558
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->getParentForChildren()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 9559
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;-><init>(Lcom/uqm/crashsight/protobuf/AbstractMessage;Lcom/uqm/crashsight/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->responseBuilder_:Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 9560
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->response_:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;

    .line 9562
    :cond_0
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->responseBuilder_:Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 8869
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->access$12200()Z

    return-void
.end method


# virtual methods
.method public final addRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;
    .locals 0

    .line 8972
    invoke-super {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;

    return-object p1
.end method

.method public final bridge synthetic addRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 8840
    invoke-virtual {p0, p1, p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->addRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic addRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    .line 8840
    invoke-virtual {p0, p1, p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->addRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final build()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;
    .locals 2

    .line 8913
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->buildPartial()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;

    move-result-object v0

    .line 8914
    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 8915
    :cond_0
    invoke-static {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->newUninitializedMessageException(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public final bridge synthetic build()Lcom/uqm/crashsight/protobuf/Message;
    .locals 1

    .line 8840
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->build()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/uqm/crashsight/protobuf/MessageLite;
    .locals 1

    .line 8840
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->build()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;

    move-result-object v0

    return-object v0
.end method

.method public final buildPartial()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;
    .locals 2

    .line 8922
    new-instance v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;Lcom/uqm/crashsight/crashreport/common/info/SightPkg$1;)V

    .line 8923
    iget v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->iVersion_:I

    invoke-static {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->access$12402(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;I)I

    .line 8924
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->encodeName_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->access$12502(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8925
    iget v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->iRequestId_:I

    invoke-static {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->access$12602(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;I)I

    .line 8926
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->sServantName_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->access$12702(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8927
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->sFuncName_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->access$12802(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8928
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->requestBuilder_:Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_0

    .line 8929
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->request_:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->access$12902(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;

    goto :goto_0

    .line 8931
    :cond_0
    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;->d()Lcom/uqm/crashsight/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->access$12902(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;

    .line 8933
    :goto_0
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->responseBuilder_:Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_1

    .line 8934
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->response_:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->access$13002(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;

    goto :goto_1

    .line 8936
    :cond_1
    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;->d()Lcom/uqm/crashsight/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->access$13002(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;

    .line 8938
    :goto_1
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->onBuilt()V

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/uqm/crashsight/protobuf/Message;
    .locals 1

    .line 8840
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->buildPartial()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/uqm/crashsight/protobuf/MessageLite;
    .locals 1

    .line 8840
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->buildPartial()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;

    move-result-object v0

    return-object v0
.end method

.method public final clear()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;
    .locals 2

    .line 8874
    invoke-super {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    const/4 v0, 0x0

    .line 8875
    iput v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->iVersion_:I

    .line 8877
    const-string v1, ""

    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->encodeName_:Ljava/lang/Object;

    .line 8879
    iput v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->iRequestId_:I

    .line 8881
    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->sServantName_:Ljava/lang/Object;

    .line 8883
    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->sFuncName_:Ljava/lang/Object;

    .line 8885
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->requestBuilder_:Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 8886
    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->request_:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;

    goto :goto_0

    .line 8888
    :cond_0
    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->request_:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;

    .line 8889
    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->requestBuilder_:Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;

    .line 8891
    :goto_0
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->responseBuilder_:Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 8892
    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->response_:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;

    goto :goto_1

    .line 8894
    :cond_1
    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->response_:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;

    .line 8895
    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->responseBuilder_:Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;

    :goto_1
    return-object p0
.end method

.method public final bridge synthetic clear()Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 8840
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->clear()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 8840
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->clear()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 1

    .line 8840
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->clear()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/uqm/crashsight/protobuf/MessageLite$Builder;
    .locals 1

    .line 8840
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->clear()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clearEncodeName()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;
    .locals 1

    .line 9124
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->getDefaultInstance()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->getEncodeName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->encodeName_:Ljava/lang/Object;

    .line 9125
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;
    .locals 0

    .line 8955
    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;

    return-object p1
.end method

.method public final bridge synthetic clearField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 8840
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->clearField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    .line 8840
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->clearField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearIRequestId()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 9170
    iput v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->iRequestId_:I

    .line 9171
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearIVersion()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 9064
    iput v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->iVersion_:I

    .line 9065
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;
    .locals 0

    .line 8960
    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 8840
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 8840
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    .line 8840
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearRequest()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;
    .locals 2

    .line 9400
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->requestBuilder_:Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 9401
    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->request_:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;

    .line 9402
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->onChanged()V

    goto :goto_0

    .line 9404
    :cond_0
    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->request_:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;

    .line 9405
    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->requestBuilder_:Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final clearResponse()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;
    .locals 2

    .line 9519
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->responseBuilder_:Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 9520
    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->response_:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;

    .line 9521
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->onChanged()V

    goto :goto_0

    .line 9523
    :cond_0
    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->response_:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;

    .line 9524
    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->responseBuilder_:Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final clearSFuncName()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;
    .locals 1

    .line 9306
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->getDefaultInstance()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->getSFuncName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->sFuncName_:Ljava/lang/Object;

    .line 9307
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearSServantName()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;
    .locals 1

    .line 9230
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->getDefaultInstance()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->getSServantName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->sServantName_:Ljava/lang/Object;

    .line 9231
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->onChanged()V

    return-object p0
.end method

.method public final clone()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;
    .locals 1

    .line 8944
    invoke-super {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 8840
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->clone()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/uqm/crashsight/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 8840
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->clone()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 8840
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->clone()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 1

    .line 8840
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->clone()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/uqm/crashsight/protobuf/MessageLite$Builder;
    .locals 1

    .line 8840
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->clone()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;

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

    .line 8840
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->clone()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;
    .locals 1

    .line 8908
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->getDefaultInstance()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/uqm/crashsight/protobuf/Message;
    .locals 1

    .line 8840
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->getDefaultInstanceForType()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/uqm/crashsight/protobuf/MessageLite;
    .locals 1

    .line 8840
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->getDefaultInstanceForType()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;

    move-result-object v0

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 8903
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->access$11800()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getEncodeName()Ljava/lang/String;
    .locals 2

    .line 9075
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->encodeName_:Ljava/lang/Object;

    .line 9076
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 9077
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 9079
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v0

    .line 9080
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->encodeName_:Ljava/lang/Object;

    return-object v0

    .line 9083
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getEncodeNameBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    .line 9092
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->encodeName_:Ljava/lang/Object;

    .line 9093
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 9094
    check-cast v0, Ljava/lang/String;

    .line 9095
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    .line 9097
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->encodeName_:Ljava/lang/Object;

    return-object v0

    .line 9100
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final getIRequestId()I
    .locals 1

    .line 9151
    iget v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->iRequestId_:I

    return v0
.end method

.method public final getIVersion()I
    .locals 1

    .line 9045
    iget v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->iVersion_:I

    return v0
.end method

.method public final getRequest()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;
    .locals 1

    .line 9342
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->requestBuilder_:Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 9343
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->request_:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getDefaultInstance()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;

    move-result-object v0

    :cond_0
    return-object v0

    .line 9345
    :cond_1
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;->c()Lcom/uqm/crashsight/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;

    return-object v0
.end method

.method public final getRequestBuilder()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;
    .locals 1

    .line 9415
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->onChanged()V

    .line 9416
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->getRequestFieldBuilder()Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;->e()Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;

    return-object v0
.end method

.method public final getRequestOrBuilder()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkgOrBuilder;
    .locals 1

    .line 9422
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->requestBuilder_:Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 9423
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;->f()Lcom/uqm/crashsight/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkgOrBuilder;

    return-object v0

    .line 9425
    :cond_0
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->request_:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;

    if-nez v0, :cond_1

    .line 9426
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getDefaultInstance()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public final getResponse()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;
    .locals 1

    .line 9461
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->responseBuilder_:Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 9462
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->response_:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->getDefaultInstance()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;

    move-result-object v0

    :cond_0
    return-object v0

    .line 9464
    :cond_1
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;->c()Lcom/uqm/crashsight/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;

    return-object v0
.end method

.method public final getResponseBuilder()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;
    .locals 1

    .line 9534
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->onChanged()V

    .line 9535
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->getResponseFieldBuilder()Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;->e()Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;

    return-object v0
.end method

.method public final getResponseOrBuilder()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkgOrBuilder;
    .locals 1

    .line 9541
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->responseBuilder_:Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 9542
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;->f()Lcom/uqm/crashsight/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkgOrBuilder;

    return-object v0

    .line 9544
    :cond_0
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->response_:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;

    if-nez v0, :cond_1

    .line 9545
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->getDefaultInstance()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public final getSFuncName()Ljava/lang/String;
    .locals 2

    .line 9257
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->sFuncName_:Ljava/lang/Object;

    .line 9258
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 9259
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 9261
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v0

    .line 9262
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->sFuncName_:Ljava/lang/Object;

    return-object v0

    .line 9265
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getSFuncNameBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    .line 9274
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->sFuncName_:Ljava/lang/Object;

    .line 9275
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 9276
    check-cast v0, Ljava/lang/String;

    .line 9277
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    .line 9279
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->sFuncName_:Ljava/lang/Object;

    return-object v0

    .line 9282
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final getSServantName()Ljava/lang/String;
    .locals 2

    .line 9181
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->sServantName_:Ljava/lang/Object;

    .line 9182
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 9183
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 9185
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v0

    .line 9186
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->sServantName_:Ljava/lang/Object;

    return-object v0

    .line 9189
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getSServantNameBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    .line 9198
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->sServantName_:Ljava/lang/Object;

    .line 9199
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 9200
    check-cast v0, Ljava/lang/String;

    .line 9201
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    .line 9203
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->sServantName_:Ljava/lang/Object;

    return-object v0

    .line 9206
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final hasRequest()Z
    .locals 1

    .line 9335
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->requestBuilder_:Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->request_:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final hasResponse()Z
    .locals 1

    .line 9454
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->responseBuilder_:Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->response_:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method protected final internalGetFieldAccessorTable()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 8852
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->access$11900()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;

    const-class v2, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;

    .line 8853
    invoke-virtual {v0, v1, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final mergeFrom(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;
    .locals 1

    .line 8985
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->getDefaultInstance()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 8986
    :cond_0
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->getIVersion()I

    move-result v0

    if-eqz v0, :cond_1

    .line 8987
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->getIVersion()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->setIVersion(I)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;

    .line 8989
    :cond_1
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->getEncodeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 8990
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->access$12500(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->encodeName_:Ljava/lang/Object;

    .line 8991
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->onChanged()V

    .line 8993
    :cond_2
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->getIRequestId()I

    move-result v0

    if-eqz v0, :cond_3

    .line 8994
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->getIRequestId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->setIRequestId(I)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;

    .line 8996
    :cond_3
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->getSServantName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 8997
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->access$12700(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->sServantName_:Ljava/lang/Object;

    .line 8998
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->onChanged()V

    .line 9000
    :cond_4
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->getSFuncName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 9001
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->access$12800(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->sFuncName_:Ljava/lang/Object;

    .line 9002
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->onChanged()V

    .line 9004
    :cond_5
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->hasRequest()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 9005
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->getRequest()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->mergeRequest(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;

    .line 9007
    :cond_6
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->hasResponse()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 9008
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->getResponse()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->mergeResponse(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;

    .line 9010
    :cond_7
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->access$13100(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;)Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;

    .line 9011
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->onChanged()V

    return-object p0
.end method

.method public final mergeFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 9027
    :try_start_0
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->access$13200()Lcom/uqm/crashsight/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/uqm/crashsight/protobuf/Parser;->parsePartialFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;
    :try_end_0
    .catch Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 9033
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->mergeFrom(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9029
    :try_start_1
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->a()Lcom/uqm/crashsight/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9030
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

    .line 9033
    invoke-virtual {p0, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->mergeFrom(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;

    .line 9035
    :cond_1
    throw p1
.end method

.method public final mergeFrom(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;
    .locals 1

    .line 8976
    instance-of v0, p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;

    if-eqz v0, :cond_0

    .line 8977
    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->mergeFrom(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;

    move-result-object p1

    return-object p1

    .line 8979
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

    .line 8840
    invoke-virtual {p0, p1, p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->mergeFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 8840
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->mergeFrom(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;

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

    .line 8840
    invoke-virtual {p0, p1, p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->mergeFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;

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

    .line 8840
    invoke-virtual {p0, p1, p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->mergeFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    .line 8840
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->mergeFrom(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;

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

    .line 8840
    invoke-virtual {p0, p1, p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->mergeFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeRequest(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;
    .locals 1

    .line 9382
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->requestBuilder_:Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 9383
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->request_:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;

    if-eqz v0, :cond_0

    .line 9385
    invoke-static {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->newBuilder(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->mergeFrom(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->buildPartial()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->request_:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;

    goto :goto_0

    .line 9387
    :cond_0
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->request_:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;

    .line 9389
    :goto_0
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->onChanged()V

    goto :goto_1

    .line 9391
    :cond_1
    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;->b(Lcom/uqm/crashsight/protobuf/AbstractMessage;)Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;

    :goto_1
    return-object p0
.end method

.method public final mergeResponse(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;
    .locals 1

    .line 9501
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->responseBuilder_:Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 9502
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->response_:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;

    if-eqz v0, :cond_0

    .line 9504
    invoke-static {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->newBuilder(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->mergeFrom(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->buildPartial()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->response_:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;

    goto :goto_0

    .line 9506
    :cond_0
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->response_:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;

    .line 9508
    :goto_0
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->onChanged()V

    goto :goto_1

    .line 9510
    :cond_1
    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;->b(Lcom/uqm/crashsight/protobuf/AbstractMessage;)Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;

    :goto_1
    return-object p0
.end method

.method public final mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;
    .locals 0

    .line 9573
    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 8840
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 8840
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    .line 8840
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setEncodeName(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;
    .locals 0

    .line 9111
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9114
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->encodeName_:Ljava/lang/Object;

    .line 9115
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->onChanged()V

    return-object p0
.end method

.method public final setEncodeNameBytes(Lcom/uqm/crashsight/protobuf/ByteString;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;
    .locals 0

    .line 9136
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9138
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->access$13300(Lcom/uqm/crashsight/protobuf/ByteString;)V

    .line 9140
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->encodeName_:Ljava/lang/Object;

    .line 9141
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->onChanged()V

    return-object p0
.end method

.method public final setField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;
    .locals 0

    .line 8950
    invoke-super {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;

    return-object p1
.end method

.method public final bridge synthetic setField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 8840
    invoke-virtual {p0, p1, p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->setField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    .line 8840
    invoke-virtual {p0, p1, p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->setField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setIRequestId(I)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;
    .locals 0

    .line 9160
    iput p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->iRequestId_:I

    .line 9161
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->onChanged()V

    return-object p0
.end method

.method public final setIVersion(I)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;
    .locals 0

    .line 9054
    iput p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->iVersion_:I

    .line 9055
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->onChanged()V

    return-object p0
.end method

.method public final setRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;
    .locals 0

    .line 8966
    invoke-super {p0, p1, p2, p3}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;

    return-object p1
.end method

.method public final bridge synthetic setRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 8840
    invoke-virtual {p0, p1, p2, p3}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->setRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    .line 8840
    invoke-virtual {p0, p1, p2, p3}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->setRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setRequest(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;
    .locals 1

    .line 9369
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->requestBuilder_:Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 9370
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->build()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->request_:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;

    .line 9371
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->onChanged()V

    goto :goto_0

    .line 9373
    :cond_0
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg$Builder;->build()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;->a(Lcom/uqm/crashsight/protobuf/AbstractMessage;)Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setRequest(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;
    .locals 1

    .line 9352
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->requestBuilder_:Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 9354
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9356
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->request_:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;

    .line 9357
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->onChanged()V

    goto :goto_0

    .line 9359
    :cond_0
    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;->a(Lcom/uqm/crashsight/protobuf/AbstractMessage;)Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setResponse(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;
    .locals 1

    .line 9488
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->responseBuilder_:Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 9489
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->build()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->response_:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;

    .line 9490
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->onChanged()V

    goto :goto_0

    .line 9492
    :cond_0
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->build()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;->a(Lcom/uqm/crashsight/protobuf/AbstractMessage;)Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setResponse(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;
    .locals 1

    .line 9471
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->responseBuilder_:Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 9473
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9475
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->response_:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;

    .line 9476
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->onChanged()V

    goto :goto_0

    .line 9478
    :cond_0
    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;->a(Lcom/uqm/crashsight/protobuf/AbstractMessage;)Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setSFuncName(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;
    .locals 0

    .line 9293
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9296
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->sFuncName_:Ljava/lang/Object;

    .line 9297
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->onChanged()V

    return-object p0
.end method

.method public final setSFuncNameBytes(Lcom/uqm/crashsight/protobuf/ByteString;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;
    .locals 0

    .line 9318
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9320
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->access$13500(Lcom/uqm/crashsight/protobuf/ByteString;)V

    .line 9322
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->sFuncName_:Ljava/lang/Object;

    .line 9323
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->onChanged()V

    return-object p0
.end method

.method public final setSServantName(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;
    .locals 0

    .line 9217
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9220
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->sServantName_:Ljava/lang/Object;

    .line 9221
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->onChanged()V

    return-object p0
.end method

.method public final setSServantNameBytes(Lcom/uqm/crashsight/protobuf/ByteString;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;
    .locals 0

    .line 9242
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9244
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket;->access$13400(Lcom/uqm/crashsight/protobuf/ByteString;)V

    .line 9246
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->sServantName_:Ljava/lang/Object;

    .line 9247
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->onChanged()V

    return-object p0
.end method

.method public final setUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;
    .locals 0

    .line 9567
    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;

    return-object p1
.end method

.method public final bridge synthetic setUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 8840
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->setUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    .line 8840
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;->setUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacket$Builder;

    move-result-object p1

    return-object p1
.end method
