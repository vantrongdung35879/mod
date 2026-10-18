.class public final Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;
.super Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
.source "CrashSight"

# interfaces
.implements Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategyOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;",
        ">;",
        "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategyOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private enableQuery_:Z

.field private enableUserInfo_:Z

.field private enable_:Z

.field private eventRecordCount_:I

.field private eventTimeInterval_:I

.field private expUrl_:Ljava/lang/Object;

.field private httpsExpUrl_:Ljava/lang/Object;

.field private httpsUrl_:Ljava/lang/Object;

.field private securityBuilder_:Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3<",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity$Builder;",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurityOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private security_:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;

.field private strategylastUpdateTime_:J

.field private url_:Ljava/lang/Object;

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


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 16714
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 17009
    const-string v0, ""

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->url_:Ljava/lang/Object;

    .line 17085
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->expUrl_:Ljava/lang/Object;

    .line 17433
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->httpsUrl_:Ljava/lang/Object;

    .line 17509
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->httpsExpUrl_:Ljava/lang/Object;

    .line 16715
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$1;)V
    .locals 0

    .line 16674
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 16720
    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 17009
    const-string p1, ""

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->url_:Ljava/lang/Object;

    .line 17085
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->expUrl_:Ljava/lang/Object;

    .line 17433
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->httpsUrl_:Ljava/lang/Object;

    .line 17509
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->httpsExpUrl_:Ljava/lang/Object;

    .line 16721
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;Lcom/uqm/crashsight/crashreport/common/info/SightPkg$1;)V
    .locals 0

    .line 16674
    invoke-direct {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public static final getDescriptor()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 16680
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->access$22200()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getSecurityFieldBuilder()Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3<",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity$Builder;",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurityOrBuilder;",
            ">;"
        }
    .end annotation

    .line 17269
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->securityBuilder_:Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 17270
    new-instance v0, Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;

    .line 17272
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->getSecurity()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;

    move-result-object v1

    .line 17273
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->getParentForChildren()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 17274
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;-><init>(Lcom/uqm/crashsight/protobuf/AbstractMessage;Lcom/uqm/crashsight/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->securityBuilder_:Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 17275
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->security_:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;

    .line 17277
    :cond_0
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->securityBuilder_:Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;

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

    .line 17292
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->onChanged()V

    .line 17293
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->valueMap_:Lcom/uqm/crashsight/protobuf/MapField;

    if-nez v0, :cond_0

    .line 17294
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$ValueMapDefaultEntryHolder;->defaultEntry:Lcom/uqm/crashsight/protobuf/MapEntry;

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/MapField;->b(Lcom/uqm/crashsight/protobuf/MapEntry;)Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->valueMap_:Lcom/uqm/crashsight/protobuf/MapField;

    .line 17297
    :cond_0
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->valueMap_:Lcom/uqm/crashsight/protobuf/MapField;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->i()Z

    move-result v0

    if-nez v0, :cond_1

    .line 17298
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->valueMap_:Lcom/uqm/crashsight/protobuf/MapField;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->d()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->valueMap_:Lcom/uqm/crashsight/protobuf/MapField;

    .line 17300
    :cond_1
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->valueMap_:Lcom/uqm/crashsight/protobuf/MapField;

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

    .line 17284
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->valueMap_:Lcom/uqm/crashsight/protobuf/MapField;

    if-nez v0, :cond_0

    .line 17285
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$ValueMapDefaultEntryHolder;->defaultEntry:Lcom/uqm/crashsight/protobuf/MapEntry;

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/MapField;->a(Lcom/uqm/crashsight/protobuf/MapEntry;)Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 16725
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->access$22700()Z

    return-void
.end method


# virtual methods
.method public final addRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;
    .locals 0

    .line 16836
    invoke-super {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;

    return-object p1
.end method

.method public final bridge synthetic addRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 16674
    invoke-virtual {p0, p1, p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->addRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic addRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    .line 16674
    invoke-virtual {p0, p1, p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->addRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final build()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;
    .locals 2

    .line 16774
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->buildPartial()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;

    move-result-object v0

    .line 16775
    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 16776
    :cond_0
    invoke-static {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->newUninitializedMessageException(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public final bridge synthetic build()Lcom/uqm/crashsight/protobuf/Message;
    .locals 1

    .line 16674
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->build()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/uqm/crashsight/protobuf/MessageLite;
    .locals 1

    .line 16674
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->build()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;

    move-result-object v0

    return-object v0
.end method

.method public final buildPartial()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;
    .locals 3

    .line 16783
    new-instance v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;Lcom/uqm/crashsight/crashreport/common/info/SightPkg$1;)V

    .line 16785
    iget-boolean v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->enable_:Z

    invoke-static {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->access$22902(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;Z)Z

    .line 16786
    iget-boolean v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->enableUserInfo_:Z

    invoke-static {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->access$23002(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;Z)Z

    .line 16787
    iget-boolean v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->enableQuery_:Z

    invoke-static {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->access$23102(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;Z)Z

    .line 16788
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->url_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->access$23202(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16789
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->expUrl_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->access$23302(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16790
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->securityBuilder_:Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_0

    .line 16791
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->security_:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->access$23402(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;

    goto :goto_0

    .line 16793
    :cond_0
    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;->d()Lcom/uqm/crashsight/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->access$23402(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;

    .line 16795
    :goto_0
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->internalGetValueMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->access$23502(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;Lcom/uqm/crashsight/protobuf/MapField;)Lcom/uqm/crashsight/protobuf/MapField;

    .line 16796
    invoke-static {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->access$23500(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;)Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/MapField;->h()V

    .line 16797
    iget-wide v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->strategylastUpdateTime_:J

    invoke-static {v0, v1, v2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->access$23602(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;J)J

    .line 16798
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->httpsUrl_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->access$23702(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16799
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->httpsExpUrl_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->access$23802(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16800
    iget v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->eventRecordCount_:I

    invoke-static {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->access$23902(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;I)I

    .line 16801
    iget v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->eventTimeInterval_:I

    invoke-static {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->access$24002(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;I)I

    .line 16802
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->onBuilt()V

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/uqm/crashsight/protobuf/Message;
    .locals 1

    .line 16674
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->buildPartial()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/uqm/crashsight/protobuf/MessageLite;
    .locals 1

    .line 16674
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->buildPartial()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;

    move-result-object v0

    return-object v0
.end method

.method public final clear()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;
    .locals 4

    .line 16730
    invoke-super {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    const/4 v0, 0x0

    .line 16731
    iput-boolean v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->enable_:Z

    .line 16733
    iput-boolean v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->enableUserInfo_:Z

    .line 16735
    iput-boolean v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->enableQuery_:Z

    .line 16737
    const-string v1, ""

    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->url_:Ljava/lang/Object;

    .line 16739
    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->expUrl_:Ljava/lang/Object;

    .line 16741
    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->securityBuilder_:Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 16742
    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->security_:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;

    goto :goto_0

    .line 16744
    :cond_0
    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->security_:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;

    .line 16745
    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->securityBuilder_:Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;

    .line 16747
    :goto_0
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->internalGetMutableValueMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v2

    invoke-virtual {v2}, Lcom/uqm/crashsight/protobuf/MapField;->c()V

    const-wide/16 v2, 0x0

    .line 16748
    iput-wide v2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->strategylastUpdateTime_:J

    .line 16750
    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->httpsUrl_:Ljava/lang/Object;

    .line 16752
    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->httpsExpUrl_:Ljava/lang/Object;

    .line 16754
    iput v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->eventRecordCount_:I

    .line 16756
    iput v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->eventTimeInterval_:I

    return-object p0
.end method

.method public final bridge synthetic clear()Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 16674
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->clear()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 16674
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->clear()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 1

    .line 16674
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->clear()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/uqm/crashsight/protobuf/MessageLite$Builder;
    .locals 1

    .line 16674
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->clear()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clearEnable()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 16944
    iput-boolean v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->enable_:Z

    .line 16945
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearEnableQuery()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 17004
    iput-boolean v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->enableQuery_:Z

    .line 17005
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearEnableUserInfo()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 16974
    iput-boolean v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->enableUserInfo_:Z

    .line 16975
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearEventRecordCount()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 17610
    iput v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->eventRecordCount_:I

    .line 17611
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearEventTimeInterval()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 17640
    iput v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->eventTimeInterval_:I

    .line 17641
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearExpUrl()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;
    .locals 1

    .line 17140
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->getDefaultInstance()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->getExpUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->expUrl_:Ljava/lang/Object;

    .line 17141
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;
    .locals 0

    .line 16819
    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;

    return-object p1
.end method

.method public final bridge synthetic clearField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 16674
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->clearField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    .line 16674
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->clearField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearHttpsExpUrl()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;
    .locals 1

    .line 17564
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->getDefaultInstance()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->getHttpsExpUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->httpsExpUrl_:Ljava/lang/Object;

    .line 17565
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearHttpsUrl()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;
    .locals 1

    .line 17488
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->getDefaultInstance()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->getHttpsUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->httpsUrl_:Ljava/lang/Object;

    .line 17489
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;
    .locals 0

    .line 16824
    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 16674
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 16674
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    .line 16674
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearSecurity()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;
    .locals 2

    .line 17234
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->securityBuilder_:Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 17235
    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->security_:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;

    .line 17236
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->onChanged()V

    goto :goto_0

    .line 17238
    :cond_0
    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->security_:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;

    .line 17239
    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->securityBuilder_:Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final clearStrategylastUpdateTime()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;
    .locals 2

    const-wide/16 v0, 0x0

    .line 17428
    iput-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->strategylastUpdateTime_:J

    .line 17429
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearUrl()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;
    .locals 1

    .line 17064
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->getDefaultInstance()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->getUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->url_:Ljava/lang/Object;

    .line 17065
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearValueMap()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;
    .locals 1

    .line 17357
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->internalGetMutableValueMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->b()Ljava/util/Map;

    move-result-object v0

    .line 17358
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-object p0
.end method

.method public final clone()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;
    .locals 1

    .line 16808
    invoke-super {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 16674
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->clone()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/uqm/crashsight/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 16674
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->clone()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 16674
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->clone()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 1

    .line 16674
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->clone()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/uqm/crashsight/protobuf/MessageLite$Builder;
    .locals 1

    .line 16674
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->clone()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;

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

    .line 16674
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->clone()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final containsValueMap(Ljava/lang/String;)Z
    .locals 1

    .line 17312
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17313
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->internalGetValueMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final getDefaultInstanceForType()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;
    .locals 1

    .line 16769
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->getDefaultInstance()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/uqm/crashsight/protobuf/Message;
    .locals 1

    .line 16674
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->getDefaultInstanceForType()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/uqm/crashsight/protobuf/MessageLite;
    .locals 1

    .line 16674
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->getDefaultInstanceForType()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;

    move-result-object v0

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 16764
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->access$22200()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getEnable()Z
    .locals 1

    .line 16925
    iget-boolean v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->enable_:Z

    return v0
.end method

.method public final getEnableQuery()Z
    .locals 1

    .line 16985
    iget-boolean v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->enableQuery_:Z

    return v0
.end method

.method public final getEnableUserInfo()Z
    .locals 1

    .line 16955
    iget-boolean v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->enableUserInfo_:Z

    return v0
.end method

.method public final getEventRecordCount()I
    .locals 1

    .line 17591
    iget v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->eventRecordCount_:I

    return v0
.end method

.method public final getEventTimeInterval()I
    .locals 1

    .line 17621
    iget v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->eventTimeInterval_:I

    return v0
.end method

.method public final getExpUrl()Ljava/lang/String;
    .locals 2

    .line 17091
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->expUrl_:Ljava/lang/Object;

    .line 17092
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 17093
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 17095
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v0

    .line 17096
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->expUrl_:Ljava/lang/Object;

    return-object v0

    .line 17099
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getExpUrlBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    .line 17108
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->expUrl_:Ljava/lang/Object;

    .line 17109
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 17110
    check-cast v0, Ljava/lang/String;

    .line 17111
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    .line 17113
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->expUrl_:Ljava/lang/Object;

    return-object v0

    .line 17116
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final getHttpsExpUrl()Ljava/lang/String;
    .locals 2

    .line 17515
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->httpsExpUrl_:Ljava/lang/Object;

    .line 17516
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 17517
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 17519
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v0

    .line 17520
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->httpsExpUrl_:Ljava/lang/Object;

    return-object v0

    .line 17523
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getHttpsExpUrlBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    .line 17532
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->httpsExpUrl_:Ljava/lang/Object;

    .line 17533
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 17534
    check-cast v0, Ljava/lang/String;

    .line 17535
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    .line 17537
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->httpsExpUrl_:Ljava/lang/Object;

    return-object v0

    .line 17540
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final getHttpsUrl()Ljava/lang/String;
    .locals 2

    .line 17439
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->httpsUrl_:Ljava/lang/Object;

    .line 17440
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 17441
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 17443
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v0

    .line 17444
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->httpsUrl_:Ljava/lang/Object;

    return-object v0

    .line 17447
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getHttpsUrlBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    .line 17456
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->httpsUrl_:Ljava/lang/Object;

    .line 17457
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 17458
    check-cast v0, Ljava/lang/String;

    .line 17459
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    .line 17461
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->httpsUrl_:Ljava/lang/Object;

    return-object v0

    .line 17464
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

    .line 17378
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->internalGetMutableValueMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->b()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getSecurity()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;
    .locals 1

    .line 17176
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->securityBuilder_:Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 17177
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->security_:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;->getDefaultInstance()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;

    move-result-object v0

    :cond_0
    return-object v0

    .line 17179
    :cond_1
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;->c()Lcom/uqm/crashsight/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;

    return-object v0
.end method

.method public final getSecurityBuilder()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity$Builder;
    .locals 1

    .line 17249
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->onChanged()V

    .line 17250
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->getSecurityFieldBuilder()Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;->e()Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity$Builder;

    return-object v0
.end method

.method public final getSecurityOrBuilder()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurityOrBuilder;
    .locals 1

    .line 17256
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->securityBuilder_:Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 17257
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;->f()Lcom/uqm/crashsight/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurityOrBuilder;

    return-object v0

    .line 17259
    :cond_0
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->security_:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;

    if-nez v0, :cond_1

    .line 17260
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;->getDefaultInstance()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public final getStrategylastUpdateTime()J
    .locals 2

    .line 17409
    iget-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->strategylastUpdateTime_:J

    return-wide v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 2

    .line 17015
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->url_:Ljava/lang/Object;

    .line 17016
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 17017
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 17019
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v0

    .line 17020
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->url_:Ljava/lang/Object;

    return-object v0

    .line 17023
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getUrlBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    .line 17032
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->url_:Ljava/lang/Object;

    .line 17033
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 17034
    check-cast v0, Ljava/lang/String;

    .line 17035
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    .line 17037
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->url_:Ljava/lang/Object;

    return-object v0

    .line 17040
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

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

    .line 17320
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->getValueMapMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getValueMapCount()I
    .locals 1

    .line 17304
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->internalGetValueMap()Lcom/uqm/crashsight/protobuf/MapField;

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

    .line 17327
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->internalGetValueMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->a()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getValueMapOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 17336
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17338
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->internalGetValueMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->a()Ljava/util/Map;

    move-result-object v0

    .line 17339
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

    .line 17347
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17349
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->internalGetValueMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->a()Ljava/util/Map;

    move-result-object v0

    .line 17350
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 17353
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 17351
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final hasSecurity()Z
    .locals 1

    .line 17169
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->securityBuilder_:Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->security_:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;

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

    .line 16708
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->access$22300()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;

    const-class v2, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;

    .line 16709
    invoke-virtual {v0, v1, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method protected final internalGetMapField(I)Lcom/uqm/crashsight/protobuf/MapField;
    .locals 3

    const/4 v0, 0x7

    if-ne p1, v0, :cond_0

    .line 16688
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->internalGetValueMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object p1

    return-object p1

    .line 16690
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

    const/4 v0, 0x7

    if-ne p1, v0, :cond_0

    .line 16699
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->internalGetMutableValueMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object p1

    return-object p1

    .line 16701
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

.method public final mergeFrom(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;
    .locals 5

    .line 16849
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->getDefaultInstance()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 16850
    :cond_0
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->getEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 16851
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->getEnable()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->setEnable(Z)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;

    .line 16853
    :cond_1
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->getEnableUserInfo()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 16854
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->getEnableUserInfo()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->setEnableUserInfo(Z)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;

    .line 16856
    :cond_2
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->getEnableQuery()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 16857
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->getEnableQuery()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->setEnableQuery(Z)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;

    .line 16859
    :cond_3
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 16860
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->access$23200(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->url_:Ljava/lang/Object;

    .line 16861
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->onChanged()V

    .line 16863
    :cond_4
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->getExpUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 16864
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->access$23300(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->expUrl_:Ljava/lang/Object;

    .line 16865
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->onChanged()V

    .line 16867
    :cond_5
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->hasSecurity()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 16868
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->getSecurity()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->mergeSecurity(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;

    .line 16870
    :cond_6
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->internalGetMutableValueMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    .line 16871
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->access$24100(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;)Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v1

    .line 16870
    invoke-virtual {v0, v1}, Lcom/uqm/crashsight/protobuf/MapField;->a(Lcom/uqm/crashsight/protobuf/MapField;)V

    .line 16872
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->getStrategylastUpdateTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_7

    .line 16873
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->getStrategylastUpdateTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->setStrategylastUpdateTime(J)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;

    .line 16875
    :cond_7
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->getHttpsUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 16876
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->access$23700(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->httpsUrl_:Ljava/lang/Object;

    .line 16877
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->onChanged()V

    .line 16879
    :cond_8
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->getHttpsExpUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 16880
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->access$23800(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->httpsExpUrl_:Ljava/lang/Object;

    .line 16881
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->onChanged()V

    .line 16883
    :cond_9
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->getEventRecordCount()I

    move-result v0

    if-eqz v0, :cond_a

    .line 16884
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->getEventRecordCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->setEventRecordCount(I)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;

    .line 16886
    :cond_a
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->getEventTimeInterval()I

    move-result v0

    if-eqz v0, :cond_b

    .line 16887
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->getEventTimeInterval()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->setEventTimeInterval(I)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;

    .line 16889
    :cond_b
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->access$24200(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;)Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;

    .line 16890
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->onChanged()V

    return-object p0
.end method

.method public final mergeFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 16906
    :try_start_0
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->access$24300()Lcom/uqm/crashsight/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/uqm/crashsight/protobuf/Parser;->parsePartialFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;
    :try_end_0
    .catch Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 16912
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->mergeFrom(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 16908
    :try_start_1
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->a()Lcom/uqm/crashsight/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16909
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

    .line 16912
    invoke-virtual {p0, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->mergeFrom(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;

    .line 16914
    :cond_1
    throw p1
.end method

.method public final mergeFrom(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;
    .locals 1

    .line 16840
    instance-of v0, p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;

    if-eqz v0, :cond_0

    .line 16841
    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->mergeFrom(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;

    move-result-object p1

    return-object p1

    .line 16843
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

    .line 16674
    invoke-virtual {p0, p1, p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->mergeFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 16674
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->mergeFrom(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;

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

    .line 16674
    invoke-virtual {p0, p1, p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->mergeFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;

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

    .line 16674
    invoke-virtual {p0, p1, p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->mergeFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    .line 16674
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->mergeFrom(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;

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

    .line 16674
    invoke-virtual {p0, p1, p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->mergeFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeSecurity(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;
    .locals 1

    .line 17216
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->securityBuilder_:Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 17217
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->security_:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;

    if-eqz v0, :cond_0

    .line 17219
    invoke-static {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;->newBuilder(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity$Builder;->mergeFrom(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity$Builder;->buildPartial()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->security_:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;

    goto :goto_0

    .line 17221
    :cond_0
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->security_:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;

    .line 17223
    :goto_0
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->onChanged()V

    goto :goto_1

    .line 17225
    :cond_1
    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;->b(Lcom/uqm/crashsight/protobuf/AbstractMessage;)Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;

    :goto_1
    return-object p0
.end method

.method public final mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;
    .locals 0

    .line 17653
    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 16674
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 16674
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    .line 16674
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final putAllValueMap(Ljava/util/Map;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;"
        }
    .end annotation

    .line 17398
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->internalGetMutableValueMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->b()Ljava/util/Map;

    move-result-object v0

    .line 17399
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0
.end method

.method public final putValueMap(Ljava/lang/String;Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;
    .locals 1

    .line 17386
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17387
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17388
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->internalGetMutableValueMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->b()Ljava/util/Map;

    move-result-object v0

    .line 17389
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final removeValueMap(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;
    .locals 1

    .line 17367
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17368
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->internalGetMutableValueMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->b()Ljava/util/Map;

    move-result-object v0

    .line 17369
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final setEnable(Z)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;
    .locals 0

    .line 16934
    iput-boolean p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->enable_:Z

    .line 16935
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->onChanged()V

    return-object p0
.end method

.method public final setEnableQuery(Z)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;
    .locals 0

    .line 16994
    iput-boolean p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->enableQuery_:Z

    .line 16995
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->onChanged()V

    return-object p0
.end method

.method public final setEnableUserInfo(Z)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;
    .locals 0

    .line 16964
    iput-boolean p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->enableUserInfo_:Z

    .line 16965
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->onChanged()V

    return-object p0
.end method

.method public final setEventRecordCount(I)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;
    .locals 0

    .line 17600
    iput p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->eventRecordCount_:I

    .line 17601
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->onChanged()V

    return-object p0
.end method

.method public final setEventTimeInterval(I)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;
    .locals 0

    .line 17630
    iput p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->eventTimeInterval_:I

    .line 17631
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->onChanged()V

    return-object p0
.end method

.method public final setExpUrl(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;
    .locals 0

    .line 17127
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17130
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->expUrl_:Ljava/lang/Object;

    .line 17131
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->onChanged()V

    return-object p0
.end method

.method public final setExpUrlBytes(Lcom/uqm/crashsight/protobuf/ByteString;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;
    .locals 0

    .line 17152
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17154
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->access$24500(Lcom/uqm/crashsight/protobuf/ByteString;)V

    .line 17156
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->expUrl_:Ljava/lang/Object;

    .line 17157
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->onChanged()V

    return-object p0
.end method

.method public final setField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;
    .locals 0

    .line 16814
    invoke-super {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;

    return-object p1
.end method

.method public final bridge synthetic setField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 16674
    invoke-virtual {p0, p1, p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->setField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    .line 16674
    invoke-virtual {p0, p1, p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->setField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setHttpsExpUrl(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;
    .locals 0

    .line 17551
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17554
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->httpsExpUrl_:Ljava/lang/Object;

    .line 17555
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->onChanged()V

    return-object p0
.end method

.method public final setHttpsExpUrlBytes(Lcom/uqm/crashsight/protobuf/ByteString;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;
    .locals 0

    .line 17576
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17578
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->access$24700(Lcom/uqm/crashsight/protobuf/ByteString;)V

    .line 17580
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->httpsExpUrl_:Ljava/lang/Object;

    .line 17581
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->onChanged()V

    return-object p0
.end method

.method public final setHttpsUrl(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;
    .locals 0

    .line 17475
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17478
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->httpsUrl_:Ljava/lang/Object;

    .line 17479
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->onChanged()V

    return-object p0
.end method

.method public final setHttpsUrlBytes(Lcom/uqm/crashsight/protobuf/ByteString;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;
    .locals 0

    .line 17500
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17502
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->access$24600(Lcom/uqm/crashsight/protobuf/ByteString;)V

    .line 17504
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->httpsUrl_:Ljava/lang/Object;

    .line 17505
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->onChanged()V

    return-object p0
.end method

.method public final setRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;
    .locals 0

    .line 16830
    invoke-super {p0, p1, p2, p3}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;

    return-object p1
.end method

.method public final bridge synthetic setRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 16674
    invoke-virtual {p0, p1, p2, p3}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->setRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    .line 16674
    invoke-virtual {p0, p1, p2, p3}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->setRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setSecurity(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity$Builder;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;
    .locals 1

    .line 17203
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->securityBuilder_:Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 17204
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity$Builder;->build()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->security_:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;

    .line 17205
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->onChanged()V

    goto :goto_0

    .line 17207
    :cond_0
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity$Builder;->build()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;->a(Lcom/uqm/crashsight/protobuf/AbstractMessage;)Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setSecurity(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;
    .locals 1

    .line 17186
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->securityBuilder_:Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 17188
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17190
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->security_:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;

    .line 17191
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->onChanged()V

    goto :goto_0

    .line 17193
    :cond_0
    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;->a(Lcom/uqm/crashsight/protobuf/AbstractMessage;)Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setStrategylastUpdateTime(J)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;
    .locals 0

    .line 17418
    iput-wide p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->strategylastUpdateTime_:J

    .line 17419
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->onChanged()V

    return-object p0
.end method

.method public final setUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;
    .locals 0

    .line 17647
    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;

    return-object p1
.end method

.method public final bridge synthetic setUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 16674
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->setUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    .line 16674
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->setUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUrl(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;
    .locals 0

    .line 17051
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17054
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->url_:Ljava/lang/Object;

    .line 17055
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->onChanged()V

    return-object p0
.end method

.method public final setUrlBytes(Lcom/uqm/crashsight/protobuf/ByteString;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;
    .locals 0

    .line 17076
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17078
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->access$24400(Lcom/uqm/crashsight/protobuf/ByteString;)V

    .line 17080
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->url_:Ljava/lang/Object;

    .line 17081
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy$Builder;->onChanged()V

    return-object p0
.end method
