.class public abstract Lcom/uqm/crashsight/protobuf/GeneratedMessage;
.super Lcom/uqm/crashsight/protobuf/AbstractMessage;
.source "CrashSight"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uqm/crashsight/protobuf/GeneratedMessage$FieldAccessorTable;,
        Lcom/uqm/crashsight/protobuf/GeneratedMessage$GeneratedExtension;,
        Lcom/uqm/crashsight/protobuf/GeneratedMessage$CachedDescriptorRetriever;,
        Lcom/uqm/crashsight/protobuf/GeneratedMessage$ExtensionDescriptorRetriever;,
        Lcom/uqm/crashsight/protobuf/GeneratedMessage$ExtendableBuilder;,
        Lcom/uqm/crashsight/protobuf/GeneratedMessage$ExtendableMessage;,
        Lcom/uqm/crashsight/protobuf/GeneratedMessage$ExtendableMessageOrBuilder;,
        Lcom/uqm/crashsight/protobuf/GeneratedMessage$Builder;,
        Lcom/uqm/crashsight/protobuf/GeneratedMessage$BuilderParent;
    }
.end annotation


# instance fields
.field private a:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 75
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/AbstractMessage;-><init>()V

    .line 76
    invoke-static {}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->b()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessage;->a:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    return-void
.end method


# virtual methods
.method protected abstract a()Lcom/uqm/crashsight/protobuf/Message$Builder;
.end method
