.class public Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilder;
.super Ljava/lang/Object;
.source "CrashSight"

# interfaces
.implements Lcom/uqm/crashsight/protobuf/GeneratedMessage$BuilderParent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilder$MessageOrBuilderExternalList;,
        Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilder$BuilderExternalList;,
        Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilder$MessageExternalList;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MType:",
        "Lcom/uqm/crashsight/protobuf/GeneratedMessage;",
        "BType:",
        "Lcom/uqm/crashsight/protobuf/GeneratedMessage$Builder;",
        "IType::",
        "Lcom/uqm/crashsight/protobuf/MessageOrBuilder;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/uqm/crashsight/protobuf/GeneratedMessage$BuilderParent;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/uqm/crashsight/protobuf/SingleFieldBuilder<",
            "TMType;TBType;TIType;>;>;"
        }
    .end annotation
.end field


# virtual methods
.method public final a(I)Lcom/uqm/crashsight/protobuf/GeneratedMessage;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TMType;"
        }
    .end annotation

    .line 1207
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilder;->a:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1214
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    .line 1222
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/SingleFieldBuilder;->b()Lcom/uqm/crashsight/protobuf/GeneratedMessage;

    move-result-object p1

    return-object p1

    .line 1219
    :cond_0
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    throw v1

    .line 1211
    :cond_1
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    throw v1
.end method

.method public final a()V
    .locals 0

    return-void
.end method

.method public final b(I)Lcom/uqm/crashsight/protobuf/GeneratedMessage$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TBType;"
        }
    .end annotation

    .line 2158
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilder;->a:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 235
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    .line 241
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/SingleFieldBuilder;->c()Lcom/uqm/crashsight/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    return-object p1

    .line 237
    :cond_0
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    throw v1

    .line 2159
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    throw v1
.end method

.method public final c(I)Lcom/uqm/crashsight/protobuf/MessageOrBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TIType;"
        }
    .end annotation

    .line 253
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilder;->a:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 260
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    .line 268
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/SingleFieldBuilder;->d()Lcom/uqm/crashsight/protobuf/MessageOrBuilder;

    move-result-object p1

    return-object p1

    .line 265
    :cond_0
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    throw v1

    .line 257
    :cond_1
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    throw v1
.end method
