.class public abstract Lcom/uqm/crashsight/protobuf/GeneratedMessage$ExtendableMessage;
.super Lcom/uqm/crashsight/protobuf/GeneratedMessage;
.source "CrashSight"

# interfaces
.implements Lcom/uqm/crashsight/protobuf/GeneratedMessage$ExtendableMessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/protobuf/GeneratedMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ExtendableMessage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uqm/crashsight/protobuf/GeneratedMessage$ExtendableMessage$ExtensionWriter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/uqm/crashsight/protobuf/GeneratedMessage$ExtendableMessage;",
        ">",
        "Lcom/uqm/crashsight/protobuf/GeneratedMessage;",
        "Lcom/uqm/crashsight/protobuf/GeneratedMessage$ExtendableMessageOrBuilder<",
        "TMessageType;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/uqm/crashsight/protobuf/FieldSet;
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

    .line 832
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessage;-><init>()V

    .line 833
    invoke-static {}, Lcom/uqm/crashsight/protobuf/FieldSet;->a()Lcom/uqm/crashsight/protobuf/FieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessage$ExtendableMessage;->a:Lcom/uqm/crashsight/protobuf/FieldSet;

    return-void
.end method
