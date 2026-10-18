.class public final Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;
.super Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
.source "CrashSight"

# interfaces
.implements Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTimeOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;",
        ">;",
        "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTimeOrBuilder;"
    }
.end annotation


# instance fields
.field private attachSize_:J

.field private bitField0_:I

.field private copyTime_:J

.field private deleteTime_:J

.field private expUid_:Ljava/lang/Object;

.field private networkType_:Ljava/lang/Object;

.field private retCode_:I

.field private retMsg_:Ljava/lang/Object;

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
.method private constructor <init>()V
    .locals 1

    .line 14890
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 15152
    const-string v0, ""

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->retMsg_:Ljava/lang/Object;

    .line 15288
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->networkType_:Ljava/lang/Object;

    .line 15514
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->expUid_:Ljava/lang/Object;

    .line 14891
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$1;)V
    .locals 0

    .line 14850
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 14896
    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 15152
    const-string p1, ""

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->retMsg_:Ljava/lang/Object;

    .line 15288
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->networkType_:Ljava/lang/Object;

    .line 15514
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->expUid_:Ljava/lang/Object;

    .line 14897
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;Lcom/uqm/crashsight/crashreport/common/info/SightPkg$1;)V
    .locals 0

    .line 14850
    invoke-direct {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public static final getDescriptor()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 14856
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->access$19500()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private internalGetMutableValueMap()Lcom/uqm/crashsight/protobuf/MapField;
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

    .line 15602
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->onChanged()V

    .line 15603
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->valueMap_:Lcom/uqm/crashsight/protobuf/MapField;

    if-nez v0, :cond_0

    .line 15604
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$ValueMapDefaultEntryHolder;->defaultEntry:Lcom/uqm/crashsight/protobuf/MapEntry;

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/MapField;->b(Lcom/uqm/crashsight/protobuf/MapEntry;)Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->valueMap_:Lcom/uqm/crashsight/protobuf/MapField;

    .line 15607
    :cond_0
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->valueMap_:Lcom/uqm/crashsight/protobuf/MapField;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->i()Z

    move-result v0

    if-nez v0, :cond_1

    .line 15608
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->valueMap_:Lcom/uqm/crashsight/protobuf/MapField;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->d()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->valueMap_:Lcom/uqm/crashsight/protobuf/MapField;

    .line 15610
    :cond_1
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->valueMap_:Lcom/uqm/crashsight/protobuf/MapField;

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

    .line 15594
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->valueMap_:Lcom/uqm/crashsight/protobuf/MapField;

    if-nez v0, :cond_0

    .line 15595
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$ValueMapDefaultEntryHolder;->defaultEntry:Lcom/uqm/crashsight/protobuf/MapEntry;

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/MapField;->a(Lcom/uqm/crashsight/protobuf/MapEntry;)Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 14901
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->access$20000()Z

    return-void
.end method


# virtual methods
.method public final addRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;
    .locals 0

    .line 15007
    invoke-super {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;

    return-object p1
.end method

.method public final bridge synthetic addRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 14850
    invoke-virtual {p0, p1, p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->addRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic addRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    .line 14850
    invoke-virtual {p0, p1, p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->addRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final build()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;
    .locals 2

    .line 14948
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->buildPartial()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;

    move-result-object v0

    .line 14949
    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 14950
    :cond_0
    invoke-static {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->newUninitializedMessageException(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public final bridge synthetic build()Lcom/uqm/crashsight/protobuf/Message;
    .locals 1

    .line 14850
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->build()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/uqm/crashsight/protobuf/MessageLite;
    .locals 1

    .line 14850
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->build()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;

    move-result-object v0

    return-object v0
.end method

.method public final buildPartial()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;
    .locals 3

    .line 14957
    new-instance v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;Lcom/uqm/crashsight/crashreport/common/info/SightPkg$1;)V

    .line 14959
    iget v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->type_:I

    invoke-static {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->access$20202(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;I)I

    .line 14960
    iget v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->retCode_:I

    invoke-static {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->access$20302(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;I)I

    .line 14961
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->retMsg_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->access$20402(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14962
    iget-wide v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->attachSize_:J

    invoke-static {v0, v1, v2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->access$20502(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;J)J

    .line 14963
    iget-wide v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->zipAttachSize_:J

    invoke-static {v0, v1, v2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->access$20602(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;J)J

    .line 14964
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->networkType_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->access$20702(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14965
    iget-wide v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->totalTime_:J

    invoke-static {v0, v1, v2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->access$20802(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;J)J

    .line 14966
    iget-wide v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->copyTime_:J

    invoke-static {v0, v1, v2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->access$20902(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;J)J

    .line 14967
    iget-wide v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->zipTime_:J

    invoke-static {v0, v1, v2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->access$21002(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;J)J

    .line 14968
    iget-wide v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->uploadTime_:J

    invoke-static {v0, v1, v2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->access$21102(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;J)J

    .line 14969
    iget-wide v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->deleteTime_:J

    invoke-static {v0, v1, v2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->access$21202(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;J)J

    .line 14970
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->expUid_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->access$21302(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14971
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->internalGetValueMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->access$21402(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;Lcom/uqm/crashsight/protobuf/MapField;)Lcom/uqm/crashsight/protobuf/MapField;

    .line 14972
    invoke-static {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->access$21400(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;)Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/MapField;->h()V

    .line 14973
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->onBuilt()V

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/uqm/crashsight/protobuf/Message;
    .locals 1

    .line 14850
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->buildPartial()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/uqm/crashsight/protobuf/MessageLite;
    .locals 1

    .line 14850
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->buildPartial()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;

    move-result-object v0

    return-object v0
.end method

.method public final clear()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;
    .locals 3

    .line 14906
    invoke-super {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    const/4 v0, 0x0

    .line 14907
    iput v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->type_:I

    .line 14909
    iput v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->retCode_:I

    .line 14911
    const-string v0, ""

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->retMsg_:Ljava/lang/Object;

    const-wide/16 v1, 0x0

    .line 14913
    iput-wide v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->attachSize_:J

    .line 14915
    iput-wide v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->zipAttachSize_:J

    .line 14917
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->networkType_:Ljava/lang/Object;

    .line 14919
    iput-wide v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->totalTime_:J

    .line 14921
    iput-wide v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->copyTime_:J

    .line 14923
    iput-wide v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->zipTime_:J

    .line 14925
    iput-wide v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->uploadTime_:J

    .line 14927
    iput-wide v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->deleteTime_:J

    .line 14929
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->expUid_:Ljava/lang/Object;

    .line 14931
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->internalGetMutableValueMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->c()V

    return-object p0
.end method

.method public final bridge synthetic clear()Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 14850
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->clear()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 14850
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->clear()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 1

    .line 14850
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->clear()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/uqm/crashsight/protobuf/MessageLite$Builder;
    .locals 1

    .line 14850
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->clear()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clearAttachSize()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;
    .locals 2

    const-wide/16 v0, 0x0

    .line 15253
    iput-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->attachSize_:J

    .line 15254
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearCopyTime()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;
    .locals 2

    const-wide/16 v0, 0x0

    .line 15419
    iput-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->copyTime_:J

    .line 15420
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearDeleteTime()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;
    .locals 2

    const-wide/16 v0, 0x0

    .line 15509
    iput-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->deleteTime_:J

    .line 15510
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearExpUid()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;
    .locals 1

    .line 15569
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->getDefaultInstance()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->getExpUid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->expUid_:Ljava/lang/Object;

    .line 15570
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;
    .locals 0

    .line 14990
    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;

    return-object p1
.end method

.method public final bridge synthetic clearField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 14850
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->clearField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    .line 14850
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->clearField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearNetworkType()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;
    .locals 1

    .line 15343
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->getDefaultInstance()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->getNetworkType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->networkType_:Ljava/lang/Object;

    .line 15344
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;
    .locals 0

    .line 14995
    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 14850
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 14850
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    .line 14850
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearRetCode()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 15147
    iput v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->retCode_:I

    .line 15148
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearRetMsg()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;
    .locals 1

    .line 15207
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->getDefaultInstance()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->getRetMsg()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->retMsg_:Ljava/lang/Object;

    .line 15208
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearTotalTime()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;
    .locals 2

    const-wide/16 v0, 0x0

    .line 15389
    iput-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->totalTime_:J

    .line 15390
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearType()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 15117
    iput v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->type_:I

    .line 15118
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearUploadTime()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;
    .locals 2

    const-wide/16 v0, 0x0

    .line 15479
    iput-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->uploadTime_:J

    .line 15480
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearValueMap()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;
    .locals 1

    .line 15667
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->internalGetMutableValueMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->b()Ljava/util/Map;

    move-result-object v0

    .line 15668
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-object p0
.end method

.method public final clearZipAttachSize()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;
    .locals 2

    const-wide/16 v0, 0x0

    .line 15283
    iput-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->zipAttachSize_:J

    .line 15284
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearZipTime()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;
    .locals 2

    const-wide/16 v0, 0x0

    .line 15449
    iput-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->zipTime_:J

    .line 15450
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->onChanged()V

    return-object p0
.end method

.method public final clone()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;
    .locals 1

    .line 14979
    invoke-super {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 14850
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->clone()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/uqm/crashsight/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 14850
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->clone()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 14850
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->clone()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 1

    .line 14850
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->clone()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/uqm/crashsight/protobuf/MessageLite$Builder;
    .locals 1

    .line 14850
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->clone()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;

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

    .line 14850
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->clone()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final containsValueMap(Ljava/lang/String;)Z
    .locals 1

    .line 15622
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15623
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->internalGetValueMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final getAttachSize()J
    .locals 2

    .line 15234
    iget-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->attachSize_:J

    return-wide v0
.end method

.method public final getCopyTime()J
    .locals 2

    .line 15400
    iget-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->copyTime_:J

    return-wide v0
.end method

.method public final getDefaultInstanceForType()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;
    .locals 1

    .line 14943
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->getDefaultInstance()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/uqm/crashsight/protobuf/Message;
    .locals 1

    .line 14850
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->getDefaultInstanceForType()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/uqm/crashsight/protobuf/MessageLite;
    .locals 1

    .line 14850
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->getDefaultInstanceForType()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;

    move-result-object v0

    return-object v0
.end method

.method public final getDeleteTime()J
    .locals 2

    .line 15490
    iget-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->deleteTime_:J

    return-wide v0
.end method

.method public final getDescriptorForType()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 14938
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->access$19500()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getExpUid()Ljava/lang/String;
    .locals 2

    .line 15520
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->expUid_:Ljava/lang/Object;

    .line 15521
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 15522
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 15524
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v0

    .line 15525
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->expUid_:Ljava/lang/Object;

    return-object v0

    .line 15528
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getExpUidBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    .line 15537
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->expUid_:Ljava/lang/Object;

    .line 15538
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 15539
    check-cast v0, Ljava/lang/String;

    .line 15540
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    .line 15542
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->expUid_:Ljava/lang/Object;

    return-object v0

    .line 15545
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final getMutableValueMap()Ljava/util/Map;
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

    .line 15688
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->internalGetMutableValueMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->b()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getNetworkType()Ljava/lang/String;
    .locals 2

    .line 15294
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->networkType_:Ljava/lang/Object;

    .line 15295
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 15296
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 15298
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v0

    .line 15299
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->networkType_:Ljava/lang/Object;

    return-object v0

    .line 15302
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getNetworkTypeBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    .line 15311
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->networkType_:Ljava/lang/Object;

    .line 15312
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 15313
    check-cast v0, Ljava/lang/String;

    .line 15314
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    .line 15316
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->networkType_:Ljava/lang/Object;

    return-object v0

    .line 15319
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final getRetCode()I
    .locals 1

    .line 15128
    iget v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->retCode_:I

    return v0
.end method

.method public final getRetMsg()Ljava/lang/String;
    .locals 2

    .line 15158
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->retMsg_:Ljava/lang/Object;

    .line 15159
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 15160
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 15162
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v0

    .line 15163
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->retMsg_:Ljava/lang/Object;

    return-object v0

    .line 15166
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getRetMsgBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    .line 15175
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->retMsg_:Ljava/lang/Object;

    .line 15176
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 15177
    check-cast v0, Ljava/lang/String;

    .line 15178
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    .line 15180
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->retMsg_:Ljava/lang/Object;

    return-object v0

    .line 15183
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final getTotalTime()J
    .locals 2

    .line 15370
    iget-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->totalTime_:J

    return-wide v0
.end method

.method public final getType()I
    .locals 1

    .line 15098
    iget v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->type_:I

    return v0
.end method

.method public final getUploadTime()J
    .locals 2

    .line 15460
    iget-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->uploadTime_:J

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

    .line 15630
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->getValueMapMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getValueMapCount()I
    .locals 1

    .line 15614
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->internalGetValueMap()Lcom/uqm/crashsight/protobuf/MapField;

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

    .line 15637
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->internalGetValueMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->a()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getValueMapOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 15646
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15648
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->internalGetValueMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->a()Ljava/util/Map;

    move-result-object v0

    .line 15649
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

    .line 15657
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15659
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->internalGetValueMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->a()Ljava/util/Map;

    move-result-object v0

    .line 15660
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 15663
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 15661
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final getZipAttachSize()J
    .locals 2

    .line 15264
    iget-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->zipAttachSize_:J

    return-wide v0
.end method

.method public final getZipTime()J
    .locals 2

    .line 15430
    iget-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->zipTime_:J

    return-wide v0
.end method

.method protected final internalGetFieldAccessorTable()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 14884
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->access$19600()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;

    const-class v2, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;

    .line 14885
    invoke-virtual {v0, v1, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method protected final internalGetMapField(I)Lcom/uqm/crashsight/protobuf/MapField;
    .locals 3

    const/16 v0, 0xd

    if-ne p1, v0, :cond_0

    .line 14864
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->internalGetValueMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object p1

    return-object p1

    .line 14866
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

.method protected final internalGetMutableMapField(I)Lcom/uqm/crashsight/protobuf/MapField;
    .locals 3

    const/16 v0, 0xd

    if-ne p1, v0, :cond_0

    .line 14875
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->internalGetMutableValueMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object p1

    return-object p1

    .line 14877
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
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final mergeFrom(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;
    .locals 5

    .line 15020
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->getDefaultInstance()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 15021
    :cond_0
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->getType()I

    move-result v0

    if-eqz v0, :cond_1

    .line 15022
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->getType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->setType(I)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;

    .line 15024
    :cond_1
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->getRetCode()I

    move-result v0

    if-eqz v0, :cond_2

    .line 15025
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->getRetCode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->setRetCode(I)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;

    .line 15027
    :cond_2
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->getRetMsg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 15028
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->access$20400(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->retMsg_:Ljava/lang/Object;

    .line 15029
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->onChanged()V

    .line 15031
    :cond_3
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->getAttachSize()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_4

    .line 15032
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->getAttachSize()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->setAttachSize(J)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;

    .line 15034
    :cond_4
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->getZipAttachSize()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_5

    .line 15035
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->getZipAttachSize()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->setZipAttachSize(J)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;

    .line 15037
    :cond_5
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->getNetworkType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 15038
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->access$20700(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->networkType_:Ljava/lang/Object;

    .line 15039
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->onChanged()V

    .line 15041
    :cond_6
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->getTotalTime()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_7

    .line 15042
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->getTotalTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->setTotalTime(J)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;

    .line 15044
    :cond_7
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->getCopyTime()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_8

    .line 15045
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->getCopyTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->setCopyTime(J)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;

    .line 15047
    :cond_8
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->getZipTime()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_9

    .line 15048
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->getZipTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->setZipTime(J)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;

    .line 15050
    :cond_9
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->getUploadTime()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_a

    .line 15051
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->getUploadTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->setUploadTime(J)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;

    .line 15053
    :cond_a
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->getDeleteTime()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_b

    .line 15054
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->getDeleteTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->setDeleteTime(J)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;

    .line 15056
    :cond_b
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->getExpUid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 15057
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->access$21300(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->expUid_:Ljava/lang/Object;

    .line 15058
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->onChanged()V

    .line 15060
    :cond_c
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->internalGetMutableValueMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    .line 15061
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->access$21500(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;)Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v1

    .line 15060
    invoke-virtual {v0, v1}, Lcom/uqm/crashsight/protobuf/MapField;->a(Lcom/uqm/crashsight/protobuf/MapField;)V

    .line 15062
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->access$21600(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;)Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;

    .line 15063
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->onChanged()V

    return-object p0
.end method

.method public final mergeFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 15079
    :try_start_0
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->access$21700()Lcom/uqm/crashsight/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/uqm/crashsight/protobuf/Parser;->parsePartialFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;
    :try_end_0
    .catch Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 15085
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->mergeFrom(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 15081
    :try_start_1
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->a()Lcom/uqm/crashsight/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15082
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

    .line 15085
    invoke-virtual {p0, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->mergeFrom(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;

    .line 15087
    :cond_1
    throw p1
.end method

.method public final mergeFrom(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;
    .locals 1

    .line 15011
    instance-of v0, p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;

    if-eqz v0, :cond_0

    .line 15012
    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->mergeFrom(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;

    move-result-object p1

    return-object p1

    .line 15014
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

    .line 14850
    invoke-virtual {p0, p1, p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->mergeFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 14850
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->mergeFrom(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;

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

    .line 14850
    invoke-virtual {p0, p1, p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->mergeFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;

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

    .line 14850
    invoke-virtual {p0, p1, p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->mergeFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    .line 14850
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->mergeFrom(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;

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

    .line 14850
    invoke-virtual {p0, p1, p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->mergeFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;
    .locals 0

    .line 15721
    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 14850
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 14850
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    .line 14850
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final putAllValueMap(Ljava/util/Map;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;"
        }
    .end annotation

    .line 15708
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->internalGetMutableValueMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->b()Ljava/util/Map;

    move-result-object v0

    .line 15709
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0
.end method

.method public final putValueMap(Ljava/lang/String;Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;
    .locals 1

    .line 15696
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15697
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15698
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->internalGetMutableValueMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->b()Ljava/util/Map;

    move-result-object v0

    .line 15699
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final removeValueMap(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;
    .locals 1

    .line 15677
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15678
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->internalGetMutableValueMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->b()Ljava/util/Map;

    move-result-object v0

    .line 15679
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final setAttachSize(J)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;
    .locals 0

    .line 15243
    iput-wide p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->attachSize_:J

    .line 15244
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->onChanged()V

    return-object p0
.end method

.method public final setCopyTime(J)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;
    .locals 0

    .line 15409
    iput-wide p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->copyTime_:J

    .line 15410
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->onChanged()V

    return-object p0
.end method

.method public final setDeleteTime(J)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;
    .locals 0

    .line 15499
    iput-wide p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->deleteTime_:J

    .line 15500
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->onChanged()V

    return-object p0
.end method

.method public final setExpUid(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;
    .locals 0

    .line 15556
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15559
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->expUid_:Ljava/lang/Object;

    .line 15560
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->onChanged()V

    return-object p0
.end method

.method public final setExpUidBytes(Lcom/uqm/crashsight/protobuf/ByteString;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;
    .locals 0

    .line 15581
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15583
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->access$22000(Lcom/uqm/crashsight/protobuf/ByteString;)V

    .line 15585
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->expUid_:Ljava/lang/Object;

    .line 15586
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->onChanged()V

    return-object p0
.end method

.method public final setField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;
    .locals 0

    .line 14985
    invoke-super {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;

    return-object p1
.end method

.method public final bridge synthetic setField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 14850
    invoke-virtual {p0, p1, p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->setField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    .line 14850
    invoke-virtual {p0, p1, p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->setField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setNetworkType(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;
    .locals 0

    .line 15330
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15333
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->networkType_:Ljava/lang/Object;

    .line 15334
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->onChanged()V

    return-object p0
.end method

.method public final setNetworkTypeBytes(Lcom/uqm/crashsight/protobuf/ByteString;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;
    .locals 0

    .line 15355
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15357
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->access$21900(Lcom/uqm/crashsight/protobuf/ByteString;)V

    .line 15359
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->networkType_:Ljava/lang/Object;

    .line 15360
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->onChanged()V

    return-object p0
.end method

.method public final setRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;
    .locals 0

    .line 15001
    invoke-super {p0, p1, p2, p3}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;

    return-object p1
.end method

.method public final bridge synthetic setRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 14850
    invoke-virtual {p0, p1, p2, p3}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->setRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    .line 14850
    invoke-virtual {p0, p1, p2, p3}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->setRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setRetCode(I)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;
    .locals 0

    .line 15137
    iput p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->retCode_:I

    .line 15138
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->onChanged()V

    return-object p0
.end method

.method public final setRetMsg(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;
    .locals 0

    .line 15194
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15197
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->retMsg_:Ljava/lang/Object;

    .line 15198
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->onChanged()V

    return-object p0
.end method

.method public final setRetMsgBytes(Lcom/uqm/crashsight/protobuf/ByteString;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;
    .locals 0

    .line 15219
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15221
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->access$21800(Lcom/uqm/crashsight/protobuf/ByteString;)V

    .line 15223
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->retMsg_:Ljava/lang/Object;

    .line 15224
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->onChanged()V

    return-object p0
.end method

.method public final setTotalTime(J)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;
    .locals 0

    .line 15379
    iput-wide p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->totalTime_:J

    .line 15380
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->onChanged()V

    return-object p0
.end method

.method public final setType(I)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;
    .locals 0

    .line 15107
    iput p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->type_:I

    .line 15108
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->onChanged()V

    return-object p0
.end method

.method public final setUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;
    .locals 0

    .line 15715
    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;

    return-object p1
.end method

.method public final bridge synthetic setUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 14850
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->setUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    .line 14850
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->setUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUploadTime(J)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;
    .locals 0

    .line 15469
    iput-wide p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->uploadTime_:J

    .line 15470
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->onChanged()V

    return-object p0
.end method

.method public final setZipAttachSize(J)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;
    .locals 0

    .line 15273
    iput-wide p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->zipAttachSize_:J

    .line 15274
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->onChanged()V

    return-object p0
.end method

.method public final setZipTime(J)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;
    .locals 0

    .line 15439
    iput-wide p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->zipTime_:J

    .line 15440
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->onChanged()V

    return-object p0
.end method
