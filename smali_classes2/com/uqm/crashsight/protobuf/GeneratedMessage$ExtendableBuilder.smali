.class public abstract Lcom/uqm/crashsight/protobuf/GeneratedMessage$ExtendableBuilder;
.super Lcom/uqm/crashsight/protobuf/GeneratedMessage$Builder;
.source "CrashSight"

# interfaces
.implements Lcom/uqm/crashsight/protobuf/GeneratedMessage$ExtendableMessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/protobuf/GeneratedMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ExtendableBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/uqm/crashsight/protobuf/GeneratedMessage$ExtendableMessage;",
        "BuilderType:",
        "Lcom/uqm/crashsight/protobuf/GeneratedMessage$ExtendableBuilder<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/uqm/crashsight/protobuf/GeneratedMessage$Builder<",
        "TBuilderType;>;",
        "Lcom/uqm/crashsight/protobuf/GeneratedMessage$ExtendableMessageOrBuilder<",
        "TMessageType;>;"
    }
.end annotation


# instance fields
.field private a:Lcom/uqm/crashsight/protobuf/FieldSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/uqm/crashsight/protobuf/FieldSet<",
            "Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 1192
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 1190
    invoke-static {}, Lcom/uqm/crashsight/protobuf/FieldSet;->b()Lcom/uqm/crashsight/protobuf/FieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessage$ExtendableBuilder;->a:Lcom/uqm/crashsight/protobuf/FieldSet;

    return-void
.end method


# virtual methods
.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 2215
    invoke-super {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessage$Builder;->a()Lcom/uqm/crashsight/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/GeneratedMessage$ExtendableBuilder;

    return-object v0
.end method
