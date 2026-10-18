.class public final Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;
.super Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
.source "CrashSight"

# interfaces
.implements Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;",
        ">;",
        "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLiteOrBuilder;"
    }
.end annotation


# instance fields
.field private appId_:Ljava/lang/Object;

.field private appVersion_:Ljava/lang/Object;

.field private cpuName_:Ljava/lang/Object;

.field private cpuType_:Ljava/lang/Object;

.field private deviceId_:Ljava/lang/Object;

.field private launchTime_:J

.field private model_:Ljava/lang/Object;

.field private osVersion_:Ljava/lang/Object;

.field private platformId_:I

.field private rom_:Ljava/lang/Object;

.field private sceneId_:Ljava/lang/Object;

.field private sdkVersion_:Ljava/lang/Object;

.field private serverEnv_:Ljava/lang/Object;

.field private sessionId_:Ljava/lang/Object;

.field private startTime_:J

.field private type_:I

.field private userId_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 28715
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 29010
    const-string v0, ""

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->appId_:Ljava/lang/Object;

    .line 29086
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->sessionId_:Ljava/lang/Object;

    .line 29162
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->deviceId_:Ljava/lang/Object;

    .line 29238
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->userId_:Ljava/lang/Object;

    .line 29314
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->sceneId_:Ljava/lang/Object;

    .line 29390
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->appVersion_:Ljava/lang/Object;

    .line 29466
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->cpuType_:Ljava/lang/Object;

    .line 29542
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->osVersion_:Ljava/lang/Object;

    .line 29618
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->rom_:Ljava/lang/Object;

    .line 29694
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->model_:Ljava/lang/Object;

    .line 29830
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->serverEnv_:Ljava/lang/Object;

    .line 29906
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->cpuName_:Ljava/lang/Object;

    .line 29982
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->sdkVersion_:Ljava/lang/Object;

    .line 28716
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$1;)V
    .locals 0

    .line 28697
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 28721
    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 29010
    const-string p1, ""

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->appId_:Ljava/lang/Object;

    .line 29086
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->sessionId_:Ljava/lang/Object;

    .line 29162
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->deviceId_:Ljava/lang/Object;

    .line 29238
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->userId_:Ljava/lang/Object;

    .line 29314
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->sceneId_:Ljava/lang/Object;

    .line 29390
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->appVersion_:Ljava/lang/Object;

    .line 29466
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->cpuType_:Ljava/lang/Object;

    .line 29542
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->osVersion_:Ljava/lang/Object;

    .line 29618
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->rom_:Ljava/lang/Object;

    .line 29694
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->model_:Ljava/lang/Object;

    .line 29830
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->serverEnv_:Ljava/lang/Object;

    .line 29906
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->cpuName_:Ljava/lang/Object;

    .line 29982
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->sdkVersion_:Ljava/lang/Object;

    .line 28722
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;Lcom/uqm/crashsight/crashreport/common/info/SightPkg$1;)V
    .locals 0

    .line 28697
    invoke-direct {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public static final getDescriptor()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 28703
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->access$37900()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 28726
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->access$38300()Z

    return-void
.end method


# virtual methods
.method public final addRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;
    .locals 0

    .line 28843
    invoke-super {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;

    return-object p1
.end method

.method public final bridge synthetic addRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 28697
    invoke-virtual {p0, p1, p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->addRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic addRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    .line 28697
    invoke-virtual {p0, p1, p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->addRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final build()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;
    .locals 2

    .line 28782
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->buildPartial()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;

    move-result-object v0

    .line 28783
    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 28784
    :cond_0
    invoke-static {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->newUninitializedMessageException(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public final bridge synthetic build()Lcom/uqm/crashsight/protobuf/Message;
    .locals 1

    .line 28697
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->build()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/uqm/crashsight/protobuf/MessageLite;
    .locals 1

    .line 28697
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->build()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;

    move-result-object v0

    return-object v0
.end method

.method public final buildPartial()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;
    .locals 3

    .line 28791
    new-instance v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;Lcom/uqm/crashsight/crashreport/common/info/SightPkg$1;)V

    .line 28792
    iget v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->type_:I

    invoke-static {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->access$38502(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;I)I

    .line 28793
    iget-wide v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->startTime_:J

    invoke-static {v0, v1, v2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->access$38602(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;J)J

    .line 28794
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->appId_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->access$38702(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28795
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->sessionId_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->access$38802(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28796
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->deviceId_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->access$38902(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28797
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->userId_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->access$39002(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28798
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->sceneId_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->access$39102(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28799
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->appVersion_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->access$39202(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28800
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->cpuType_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->access$39302(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28801
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->osVersion_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->access$39402(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28802
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->rom_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->access$39502(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28803
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->model_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->access$39602(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28804
    iget v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->platformId_:I

    invoke-static {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->access$39702(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;I)I

    .line 28805
    iget-wide v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->launchTime_:J

    invoke-static {v0, v1, v2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->access$39802(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;J)J

    .line 28806
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->serverEnv_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->access$39902(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28807
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->cpuName_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->access$40002(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28808
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->sdkVersion_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->access$40102(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28809
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->onBuilt()V

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/uqm/crashsight/protobuf/Message;
    .locals 1

    .line 28697
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->buildPartial()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/uqm/crashsight/protobuf/MessageLite;
    .locals 1

    .line 28697
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->buildPartial()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;

    move-result-object v0

    return-object v0
.end method

.method public final clear()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;
    .locals 4

    .line 28731
    invoke-super {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    const/4 v0, 0x0

    .line 28732
    iput v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->type_:I

    const-wide/16 v1, 0x0

    .line 28734
    iput-wide v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->startTime_:J

    .line 28736
    const-string v3, ""

    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->appId_:Ljava/lang/Object;

    .line 28738
    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->sessionId_:Ljava/lang/Object;

    .line 28740
    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->deviceId_:Ljava/lang/Object;

    .line 28742
    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->userId_:Ljava/lang/Object;

    .line 28744
    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->sceneId_:Ljava/lang/Object;

    .line 28746
    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->appVersion_:Ljava/lang/Object;

    .line 28748
    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->cpuType_:Ljava/lang/Object;

    .line 28750
    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->osVersion_:Ljava/lang/Object;

    .line 28752
    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->rom_:Ljava/lang/Object;

    .line 28754
    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->model_:Ljava/lang/Object;

    .line 28756
    iput v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->platformId_:I

    .line 28758
    iput-wide v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->launchTime_:J

    .line 28760
    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->serverEnv_:Ljava/lang/Object;

    .line 28762
    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->cpuName_:Ljava/lang/Object;

    .line 28764
    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->sdkVersion_:Ljava/lang/Object;

    return-object p0
.end method

.method public final bridge synthetic clear()Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 28697
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->clear()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 28697
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->clear()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 1

    .line 28697
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->clear()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/uqm/crashsight/protobuf/MessageLite$Builder;
    .locals 1

    .line 28697
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->clear()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clearAppId()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;
    .locals 1

    .line 29065
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->getDefaultInstance()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->getAppId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->appId_:Ljava/lang/Object;

    .line 29066
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearAppVersion()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;
    .locals 1

    .line 29445
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->getDefaultInstance()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->getAppVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->appVersion_:Ljava/lang/Object;

    .line 29446
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearCpuName()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;
    .locals 1

    .line 29961
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->getDefaultInstance()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->getCpuName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->cpuName_:Ljava/lang/Object;

    .line 29962
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearCpuType()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;
    .locals 1

    .line 29521
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->getDefaultInstance()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->getCpuType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->cpuType_:Ljava/lang/Object;

    .line 29522
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearDeviceId()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;
    .locals 1

    .line 29217
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->getDefaultInstance()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->deviceId_:Ljava/lang/Object;

    .line 29218
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;
    .locals 0

    .line 28826
    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;

    return-object p1
.end method

.method public final bridge synthetic clearField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 28697
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->clearField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    .line 28697
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->clearField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearLaunchTime()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;
    .locals 2

    const-wide/16 v0, 0x0

    .line 29825
    iput-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->launchTime_:J

    .line 29826
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearModel()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;
    .locals 1

    .line 29749
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->getDefaultInstance()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->getModel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->model_:Ljava/lang/Object;

    .line 29750
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;
    .locals 0

    .line 28831
    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 28697
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 28697
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    .line 28697
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearOsVersion()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;
    .locals 1

    .line 29597
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->getDefaultInstance()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->getOsVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->osVersion_:Ljava/lang/Object;

    .line 29598
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearPlatformId()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 29795
    iput v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->platformId_:I

    .line 29796
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearRom()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;
    .locals 1

    .line 29673
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->getDefaultInstance()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->getRom()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->rom_:Ljava/lang/Object;

    .line 29674
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearSceneId()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;
    .locals 1

    .line 29369
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->getDefaultInstance()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->getSceneId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->sceneId_:Ljava/lang/Object;

    .line 29370
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearSdkVersion()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;
    .locals 1

    .line 30037
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->getDefaultInstance()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->getSdkVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->sdkVersion_:Ljava/lang/Object;

    .line 30038
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearServerEnv()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;
    .locals 1

    .line 29885
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->getDefaultInstance()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->getServerEnv()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->serverEnv_:Ljava/lang/Object;

    .line 29886
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearSessionId()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;
    .locals 1

    .line 29141
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->getDefaultInstance()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->getSessionId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->sessionId_:Ljava/lang/Object;

    .line 29142
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearStartTime()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;
    .locals 2

    const-wide/16 v0, 0x0

    .line 29005
    iput-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->startTime_:J

    .line 29006
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearType()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 28975
    iput v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->type_:I

    .line 28976
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearUserId()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;
    .locals 1

    .line 29293
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->getDefaultInstance()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->getUserId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->userId_:Ljava/lang/Object;

    .line 29294
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->onChanged()V

    return-object p0
.end method

.method public final clone()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;
    .locals 1

    .line 28815
    invoke-super {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 28697
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->clone()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/uqm/crashsight/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 28697
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->clone()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 28697
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->clone()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 1

    .line 28697
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->clone()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/uqm/crashsight/protobuf/MessageLite$Builder;
    .locals 1

    .line 28697
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->clone()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;

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

    .line 28697
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->clone()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final getAppId()Ljava/lang/String;
    .locals 2

    .line 29016
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->appId_:Ljava/lang/Object;

    .line 29017
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 29018
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 29020
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v0

    .line 29021
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->appId_:Ljava/lang/Object;

    return-object v0

    .line 29024
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getAppIdBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    .line 29033
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->appId_:Ljava/lang/Object;

    .line 29034
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 29035
    check-cast v0, Ljava/lang/String;

    .line 29036
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    .line 29038
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->appId_:Ljava/lang/Object;

    return-object v0

    .line 29041
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final getAppVersion()Ljava/lang/String;
    .locals 2

    .line 29396
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->appVersion_:Ljava/lang/Object;

    .line 29397
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 29398
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 29400
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v0

    .line 29401
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->appVersion_:Ljava/lang/Object;

    return-object v0

    .line 29404
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getAppVersionBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    .line 29413
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->appVersion_:Ljava/lang/Object;

    .line 29414
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 29415
    check-cast v0, Ljava/lang/String;

    .line 29416
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    .line 29418
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->appVersion_:Ljava/lang/Object;

    return-object v0

    .line 29421
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final getCpuName()Ljava/lang/String;
    .locals 2

    .line 29912
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->cpuName_:Ljava/lang/Object;

    .line 29913
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 29914
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 29916
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v0

    .line 29917
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->cpuName_:Ljava/lang/Object;

    return-object v0

    .line 29920
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getCpuNameBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    .line 29929
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->cpuName_:Ljava/lang/Object;

    .line 29930
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 29931
    check-cast v0, Ljava/lang/String;

    .line 29932
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    .line 29934
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->cpuName_:Ljava/lang/Object;

    return-object v0

    .line 29937
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final getCpuType()Ljava/lang/String;
    .locals 2

    .line 29472
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->cpuType_:Ljava/lang/Object;

    .line 29473
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 29474
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 29476
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v0

    .line 29477
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->cpuType_:Ljava/lang/Object;

    return-object v0

    .line 29480
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getCpuTypeBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    .line 29489
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->cpuType_:Ljava/lang/Object;

    .line 29490
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 29491
    check-cast v0, Ljava/lang/String;

    .line 29492
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    .line 29494
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->cpuType_:Ljava/lang/Object;

    return-object v0

    .line 29497
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;
    .locals 1

    .line 28777
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->getDefaultInstance()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/uqm/crashsight/protobuf/Message;
    .locals 1

    .line 28697
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->getDefaultInstanceForType()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/uqm/crashsight/protobuf/MessageLite;
    .locals 1

    .line 28697
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->getDefaultInstanceForType()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;

    move-result-object v0

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 28772
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->access$37900()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getDeviceId()Ljava/lang/String;
    .locals 2

    .line 29168
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->deviceId_:Ljava/lang/Object;

    .line 29169
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 29170
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 29172
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v0

    .line 29173
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->deviceId_:Ljava/lang/Object;

    return-object v0

    .line 29176
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getDeviceIdBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    .line 29185
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->deviceId_:Ljava/lang/Object;

    .line 29186
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 29187
    check-cast v0, Ljava/lang/String;

    .line 29188
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    .line 29190
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->deviceId_:Ljava/lang/Object;

    return-object v0

    .line 29193
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final getLaunchTime()J
    .locals 2

    .line 29806
    iget-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->launchTime_:J

    return-wide v0
.end method

.method public final getModel()Ljava/lang/String;
    .locals 2

    .line 29700
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->model_:Ljava/lang/Object;

    .line 29701
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 29702
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 29704
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v0

    .line 29705
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->model_:Ljava/lang/Object;

    return-object v0

    .line 29708
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getModelBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    .line 29717
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->model_:Ljava/lang/Object;

    .line 29718
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 29719
    check-cast v0, Ljava/lang/String;

    .line 29720
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    .line 29722
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->model_:Ljava/lang/Object;

    return-object v0

    .line 29725
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final getOsVersion()Ljava/lang/String;
    .locals 2

    .line 29548
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->osVersion_:Ljava/lang/Object;

    .line 29549
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 29550
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 29552
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v0

    .line 29553
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->osVersion_:Ljava/lang/Object;

    return-object v0

    .line 29556
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getOsVersionBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    .line 29565
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->osVersion_:Ljava/lang/Object;

    .line 29566
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 29567
    check-cast v0, Ljava/lang/String;

    .line 29568
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    .line 29570
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->osVersion_:Ljava/lang/Object;

    return-object v0

    .line 29573
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final getPlatformId()I
    .locals 1

    .line 29776
    iget v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->platformId_:I

    return v0
.end method

.method public final getRom()Ljava/lang/String;
    .locals 2

    .line 29624
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->rom_:Ljava/lang/Object;

    .line 29625
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 29626
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 29628
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v0

    .line 29629
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->rom_:Ljava/lang/Object;

    return-object v0

    .line 29632
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getRomBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    .line 29641
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->rom_:Ljava/lang/Object;

    .line 29642
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 29643
    check-cast v0, Ljava/lang/String;

    .line 29644
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    .line 29646
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->rom_:Ljava/lang/Object;

    return-object v0

    .line 29649
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final getSceneId()Ljava/lang/String;
    .locals 2

    .line 29320
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->sceneId_:Ljava/lang/Object;

    .line 29321
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 29322
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 29324
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v0

    .line 29325
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->sceneId_:Ljava/lang/Object;

    return-object v0

    .line 29328
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getSceneIdBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    .line 29337
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->sceneId_:Ljava/lang/Object;

    .line 29338
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 29339
    check-cast v0, Ljava/lang/String;

    .line 29340
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    .line 29342
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->sceneId_:Ljava/lang/Object;

    return-object v0

    .line 29345
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final getSdkVersion()Ljava/lang/String;
    .locals 2

    .line 29988
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->sdkVersion_:Ljava/lang/Object;

    .line 29989
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 29990
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 29992
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v0

    .line 29993
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->sdkVersion_:Ljava/lang/Object;

    return-object v0

    .line 29996
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getSdkVersionBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    .line 30005
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->sdkVersion_:Ljava/lang/Object;

    .line 30006
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 30007
    check-cast v0, Ljava/lang/String;

    .line 30008
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    .line 30010
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->sdkVersion_:Ljava/lang/Object;

    return-object v0

    .line 30013
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final getServerEnv()Ljava/lang/String;
    .locals 2

    .line 29836
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->serverEnv_:Ljava/lang/Object;

    .line 29837
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 29838
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 29840
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v0

    .line 29841
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->serverEnv_:Ljava/lang/Object;

    return-object v0

    .line 29844
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getServerEnvBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    .line 29853
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->serverEnv_:Ljava/lang/Object;

    .line 29854
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 29855
    check-cast v0, Ljava/lang/String;

    .line 29856
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    .line 29858
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->serverEnv_:Ljava/lang/Object;

    return-object v0

    .line 29861
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final getSessionId()Ljava/lang/String;
    .locals 2

    .line 29092
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->sessionId_:Ljava/lang/Object;

    .line 29093
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 29094
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 29096
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v0

    .line 29097
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->sessionId_:Ljava/lang/Object;

    return-object v0

    .line 29100
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getSessionIdBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    .line 29109
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->sessionId_:Ljava/lang/Object;

    .line 29110
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 29111
    check-cast v0, Ljava/lang/String;

    .line 29112
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    .line 29114
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->sessionId_:Ljava/lang/Object;

    return-object v0

    .line 29117
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final getStartTime()J
    .locals 2

    .line 28986
    iget-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->startTime_:J

    return-wide v0
.end method

.method public final getType()I
    .locals 1

    .line 28956
    iget v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->type_:I

    return v0
.end method

.method public final getUserId()Ljava/lang/String;
    .locals 2

    .line 29244
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->userId_:Ljava/lang/Object;

    .line 29245
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 29246
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 29248
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v0

    .line 29249
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->userId_:Ljava/lang/Object;

    return-object v0

    .line 29252
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getUserIdBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    .line 29261
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->userId_:Ljava/lang/Object;

    .line 29262
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 29263
    check-cast v0, Ljava/lang/String;

    .line 29264
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    .line 29266
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->userId_:Ljava/lang/Object;

    return-object v0

    .line 29269
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method protected final internalGetFieldAccessorTable()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 28709
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->access$38000()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;

    const-class v2, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;

    .line 28710
    invoke-virtual {v0, v1, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final mergeFrom(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;
    .locals 5

    .line 28856
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->getDefaultInstance()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 28857
    :cond_0
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->getType()I

    move-result v0

    if-eqz v0, :cond_1

    .line 28858
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->getType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->setType(I)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;

    .line 28860
    :cond_1
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->getStartTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    .line 28861
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->getStartTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->setStartTime(J)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;

    .line 28863
    :cond_2
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 28864
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->access$38700(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->appId_:Ljava/lang/Object;

    .line 28865
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->onChanged()V

    .line 28867
    :cond_3
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->getSessionId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 28868
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->access$38800(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->sessionId_:Ljava/lang/Object;

    .line 28869
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->onChanged()V

    .line 28871
    :cond_4
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 28872
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->access$38900(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->deviceId_:Ljava/lang/Object;

    .line 28873
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->onChanged()V

    .line 28875
    :cond_5
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 28876
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->access$39000(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->userId_:Ljava/lang/Object;

    .line 28877
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->onChanged()V

    .line 28879
    :cond_6
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->getSceneId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 28880
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->access$39100(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->sceneId_:Ljava/lang/Object;

    .line 28881
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->onChanged()V

    .line 28883
    :cond_7
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->getAppVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 28884
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->access$39200(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->appVersion_:Ljava/lang/Object;

    .line 28885
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->onChanged()V

    .line 28887
    :cond_8
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->getCpuType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 28888
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->access$39300(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->cpuType_:Ljava/lang/Object;

    .line 28889
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->onChanged()V

    .line 28891
    :cond_9
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->getOsVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 28892
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->access$39400(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->osVersion_:Ljava/lang/Object;

    .line 28893
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->onChanged()V

    .line 28895
    :cond_a
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->getRom()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 28896
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->access$39500(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->rom_:Ljava/lang/Object;

    .line 28897
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->onChanged()V

    .line 28899
    :cond_b
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->getModel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 28900
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->access$39600(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->model_:Ljava/lang/Object;

    .line 28901
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->onChanged()V

    .line 28903
    :cond_c
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->getPlatformId()I

    move-result v0

    if-eqz v0, :cond_d

    .line 28904
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->getPlatformId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->setPlatformId(I)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;

    .line 28906
    :cond_d
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->getLaunchTime()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_e

    .line 28907
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->getLaunchTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->setLaunchTime(J)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;

    .line 28909
    :cond_e
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->getServerEnv()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    .line 28910
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->access$39900(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->serverEnv_:Ljava/lang/Object;

    .line 28911
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->onChanged()V

    .line 28913
    :cond_f
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->getCpuName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    .line 28914
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->access$40000(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->cpuName_:Ljava/lang/Object;

    .line 28915
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->onChanged()V

    .line 28917
    :cond_10
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->getSdkVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    .line 28918
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->access$40100(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->sdkVersion_:Ljava/lang/Object;

    .line 28919
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->onChanged()V

    .line 28921
    :cond_11
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->access$40200(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;)Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;

    .line 28922
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->onChanged()V

    return-object p0
.end method

.method public final mergeFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 28938
    :try_start_0
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->access$40300()Lcom/uqm/crashsight/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/uqm/crashsight/protobuf/Parser;->parsePartialFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;
    :try_end_0
    .catch Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 28944
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->mergeFrom(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 28940
    :try_start_1
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->a()Lcom/uqm/crashsight/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28941
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

    .line 28944
    invoke-virtual {p0, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->mergeFrom(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;

    .line 28946
    :cond_1
    throw p1
.end method

.method public final mergeFrom(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;
    .locals 1

    .line 28847
    instance-of v0, p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;

    if-eqz v0, :cond_0

    .line 28848
    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->mergeFrom(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;

    move-result-object p1

    return-object p1

    .line 28850
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

    .line 28697
    invoke-virtual {p0, p1, p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->mergeFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 28697
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->mergeFrom(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;

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

    .line 28697
    invoke-virtual {p0, p1, p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->mergeFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;

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

    .line 28697
    invoke-virtual {p0, p1, p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->mergeFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    .line 28697
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->mergeFrom(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;

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

    .line 28697
    invoke-virtual {p0, p1, p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->mergeFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;
    .locals 0

    .line 30066
    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 28697
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 28697
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    .line 28697
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setAppId(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;
    .locals 0

    .line 29052
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29055
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->appId_:Ljava/lang/Object;

    .line 29056
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->onChanged()V

    return-object p0
.end method

.method public final setAppIdBytes(Lcom/uqm/crashsight/protobuf/ByteString;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;
    .locals 0

    .line 29077
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29079
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->access$40400(Lcom/uqm/crashsight/protobuf/ByteString;)V

    .line 29081
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->appId_:Ljava/lang/Object;

    .line 29082
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->onChanged()V

    return-object p0
.end method

.method public final setAppVersion(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;
    .locals 0

    .line 29432
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29435
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->appVersion_:Ljava/lang/Object;

    .line 29436
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->onChanged()V

    return-object p0
.end method

.method public final setAppVersionBytes(Lcom/uqm/crashsight/protobuf/ByteString;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;
    .locals 0

    .line 29457
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29459
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->access$40900(Lcom/uqm/crashsight/protobuf/ByteString;)V

    .line 29461
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->appVersion_:Ljava/lang/Object;

    .line 29462
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->onChanged()V

    return-object p0
.end method

.method public final setCpuName(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;
    .locals 0

    .line 29948
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29951
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->cpuName_:Ljava/lang/Object;

    .line 29952
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->onChanged()V

    return-object p0
.end method

.method public final setCpuNameBytes(Lcom/uqm/crashsight/protobuf/ByteString;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;
    .locals 0

    .line 29973
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29975
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->access$41500(Lcom/uqm/crashsight/protobuf/ByteString;)V

    .line 29977
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->cpuName_:Ljava/lang/Object;

    .line 29978
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->onChanged()V

    return-object p0
.end method

.method public final setCpuType(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;
    .locals 0

    .line 29508
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29511
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->cpuType_:Ljava/lang/Object;

    .line 29512
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->onChanged()V

    return-object p0
.end method

.method public final setCpuTypeBytes(Lcom/uqm/crashsight/protobuf/ByteString;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;
    .locals 0

    .line 29533
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29535
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->access$41000(Lcom/uqm/crashsight/protobuf/ByteString;)V

    .line 29537
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->cpuType_:Ljava/lang/Object;

    .line 29538
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->onChanged()V

    return-object p0
.end method

.method public final setDeviceId(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;
    .locals 0

    .line 29204
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29207
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->deviceId_:Ljava/lang/Object;

    .line 29208
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->onChanged()V

    return-object p0
.end method

.method public final setDeviceIdBytes(Lcom/uqm/crashsight/protobuf/ByteString;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;
    .locals 0

    .line 29229
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29231
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->access$40600(Lcom/uqm/crashsight/protobuf/ByteString;)V

    .line 29233
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->deviceId_:Ljava/lang/Object;

    .line 29234
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->onChanged()V

    return-object p0
.end method

.method public final setField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;
    .locals 0

    .line 28821
    invoke-super {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;

    return-object p1
.end method

.method public final bridge synthetic setField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 28697
    invoke-virtual {p0, p1, p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->setField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    .line 28697
    invoke-virtual {p0, p1, p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->setField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setLaunchTime(J)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;
    .locals 0

    .line 29815
    iput-wide p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->launchTime_:J

    .line 29816
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->onChanged()V

    return-object p0
.end method

.method public final setModel(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;
    .locals 0

    .line 29736
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29739
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->model_:Ljava/lang/Object;

    .line 29740
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->onChanged()V

    return-object p0
.end method

.method public final setModelBytes(Lcom/uqm/crashsight/protobuf/ByteString;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;
    .locals 0

    .line 29761
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29763
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->access$41300(Lcom/uqm/crashsight/protobuf/ByteString;)V

    .line 29765
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->model_:Ljava/lang/Object;

    .line 29766
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->onChanged()V

    return-object p0
.end method

.method public final setOsVersion(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;
    .locals 0

    .line 29584
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29587
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->osVersion_:Ljava/lang/Object;

    .line 29588
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->onChanged()V

    return-object p0
.end method

.method public final setOsVersionBytes(Lcom/uqm/crashsight/protobuf/ByteString;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;
    .locals 0

    .line 29609
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29611
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->access$41100(Lcom/uqm/crashsight/protobuf/ByteString;)V

    .line 29613
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->osVersion_:Ljava/lang/Object;

    .line 29614
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->onChanged()V

    return-object p0
.end method

.method public final setPlatformId(I)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;
    .locals 0

    .line 29785
    iput p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->platformId_:I

    .line 29786
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->onChanged()V

    return-object p0
.end method

.method public final setRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;
    .locals 0

    .line 28837
    invoke-super {p0, p1, p2, p3}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;

    return-object p1
.end method

.method public final bridge synthetic setRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 28697
    invoke-virtual {p0, p1, p2, p3}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->setRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    .line 28697
    invoke-virtual {p0, p1, p2, p3}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->setRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setRom(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;
    .locals 0

    .line 29660
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29663
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->rom_:Ljava/lang/Object;

    .line 29664
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->onChanged()V

    return-object p0
.end method

.method public final setRomBytes(Lcom/uqm/crashsight/protobuf/ByteString;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;
    .locals 0

    .line 29685
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29687
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->access$41200(Lcom/uqm/crashsight/protobuf/ByteString;)V

    .line 29689
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->rom_:Ljava/lang/Object;

    .line 29690
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->onChanged()V

    return-object p0
.end method

.method public final setSceneId(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;
    .locals 0

    .line 29356
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29359
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->sceneId_:Ljava/lang/Object;

    .line 29360
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->onChanged()V

    return-object p0
.end method

.method public final setSceneIdBytes(Lcom/uqm/crashsight/protobuf/ByteString;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;
    .locals 0

    .line 29381
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29383
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->access$40800(Lcom/uqm/crashsight/protobuf/ByteString;)V

    .line 29385
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->sceneId_:Ljava/lang/Object;

    .line 29386
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->onChanged()V

    return-object p0
.end method

.method public final setSdkVersion(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;
    .locals 0

    .line 30024
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30027
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->sdkVersion_:Ljava/lang/Object;

    .line 30028
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->onChanged()V

    return-object p0
.end method

.method public final setSdkVersionBytes(Lcom/uqm/crashsight/protobuf/ByteString;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;
    .locals 0

    .line 30049
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30051
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->access$41600(Lcom/uqm/crashsight/protobuf/ByteString;)V

    .line 30053
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->sdkVersion_:Ljava/lang/Object;

    .line 30054
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->onChanged()V

    return-object p0
.end method

.method public final setServerEnv(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;
    .locals 0

    .line 29872
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29875
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->serverEnv_:Ljava/lang/Object;

    .line 29876
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->onChanged()V

    return-object p0
.end method

.method public final setServerEnvBytes(Lcom/uqm/crashsight/protobuf/ByteString;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;
    .locals 0

    .line 29897
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29899
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->access$41400(Lcom/uqm/crashsight/protobuf/ByteString;)V

    .line 29901
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->serverEnv_:Ljava/lang/Object;

    .line 29902
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->onChanged()V

    return-object p0
.end method

.method public final setSessionId(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;
    .locals 0

    .line 29128
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29131
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->sessionId_:Ljava/lang/Object;

    .line 29132
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->onChanged()V

    return-object p0
.end method

.method public final setSessionIdBytes(Lcom/uqm/crashsight/protobuf/ByteString;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;
    .locals 0

    .line 29153
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29155
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->access$40500(Lcom/uqm/crashsight/protobuf/ByteString;)V

    .line 29157
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->sessionId_:Ljava/lang/Object;

    .line 29158
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->onChanged()V

    return-object p0
.end method

.method public final setStartTime(J)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;
    .locals 0

    .line 28995
    iput-wide p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->startTime_:J

    .line 28996
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->onChanged()V

    return-object p0
.end method

.method public final setType(I)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;
    .locals 0

    .line 28965
    iput p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->type_:I

    .line 28966
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->onChanged()V

    return-object p0
.end method

.method public final setUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;
    .locals 0

    .line 30060
    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;

    return-object p1
.end method

.method public final bridge synthetic setUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 28697
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->setUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    .line 28697
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->setUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUserId(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;
    .locals 0

    .line 29280
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29283
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->userId_:Ljava/lang/Object;

    .line 29284
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->onChanged()V

    return-object p0
.end method

.method public final setUserIdBytes(Lcom/uqm/crashsight/protobuf/ByteString;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;
    .locals 0

    .line 29305
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29307
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite;->access$40700(Lcom/uqm/crashsight/protobuf/ByteString;)V

    .line 29309
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->userId_:Ljava/lang/Object;

    .line 29310
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageLite$Builder;->onChanged()V

    return-object p0
.end method
