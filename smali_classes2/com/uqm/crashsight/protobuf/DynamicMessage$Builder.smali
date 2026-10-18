.class public final Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;
.super Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
.source "CrashSight"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/protobuf/DynamicMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder<",
        "Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

.field private b:Lcom/uqm/crashsight/protobuf/FieldSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/uqm/crashsight/protobuf/FieldSet<",
            "Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private final c:[Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

.field private d:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;


# direct methods
.method private constructor <init>(Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;)V
    .locals 1

    .line 326
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;-><init>()V

    .line 327
    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->a:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    .line 328
    invoke-static {}, Lcom/uqm/crashsight/protobuf/FieldSet;->a()Lcom/uqm/crashsight/protobuf/FieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->b:Lcom/uqm/crashsight/protobuf/FieldSet;

    .line 329
    invoke-static {}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->b()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->d:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    .line 330
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->a()Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->h()I

    move-result v0

    new-array v0, v0, [Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->c:[Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    .line 332
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->e()Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;

    move-result-object p1

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->h()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 333
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->b()V

    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;B)V
    .locals 0

    .line 319
    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;-><init>(Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;)V

    return-void
.end method

.method private a(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;
    .locals 3

    .line 557
    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->b(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)V

    .line 558
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->f()V

    .line 559
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->u()Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 561
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;->a()I

    move-result v0

    .line 562
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->c:[Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    aget-object v2, v1, v0

    if-ne v2, p1, :cond_0

    const/4 v2, 0x0

    .line 563
    aput-object v2, v1, v0

    .line 566
    :cond_0
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->b:Lcom/uqm/crashsight/protobuf/FieldSet;

    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/FieldSet;->c(Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;)V

    return-object p0
.end method

.method private a(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;
    .locals 1

    .line 492
    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->b(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)V

    .line 493
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->c:[Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;->a()I

    move-result p1

    aget-object p1, v0, p1

    if-eqz p1, :cond_0

    .line 495
    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->a(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;

    :cond_0
    return-object p0
.end method

.method private a(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;
    .locals 1

    .line 611
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->d:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    .line 612
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->a(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->a(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->d:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method private static a(Ljava/lang/Object;)V
    .locals 1

    .line 632
    invoke-static {p0}, Lcom/uqm/crashsight/protobuf/Internal;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    instance-of p0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$EnumValueDescriptor;

    if-eqz p0, :cond_0

    return-void

    .line 634
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "DynamicMessage should use EnumValueDescriptor to set Enum Value."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private b()V
    .locals 4

    .line 338
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->a:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    .line 339
    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->f()Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v2

    sget-object v3, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$JavaType;->i:Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v2, v3, :cond_0

    .line 340
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->b:Lcom/uqm/crashsight/protobuf/FieldSet;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->w()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move-result-object v3

    invoke-static {v3}, Lcom/uqm/crashsight/protobuf/DynamicMessage;->a(Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;)Lcom/uqm/crashsight/protobuf/DynamicMessage;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/uqm/crashsight/protobuf/FieldSet;->a(Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    goto :goto_0

    .line 342
    :cond_0
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->b:Lcom/uqm/crashsight/protobuf/FieldSet;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->r()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/uqm/crashsight/protobuf/FieldSet;->a(Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private b(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)V
    .locals 1

    .line 618
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->t()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move-result-object p1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->a:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    if-ne p1, v0, :cond_0

    return-void

    .line 619
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "FieldDescriptor does not match message type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private b(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)V
    .locals 1

    .line 625
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;->e()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move-result-object p1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->a:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    if-ne p1, v0, :cond_0

    return-void

    .line 626
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "OneofDescriptor does not match message type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private c()Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;
    .locals 1

    .line 352
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->b:Lcom/uqm/crashsight/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/FieldSet;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    invoke-static {}, Lcom/uqm/crashsight/protobuf/FieldSet;->a()Lcom/uqm/crashsight/protobuf/FieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->b:Lcom/uqm/crashsight/protobuf/FieldSet;

    goto :goto_0

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->b:Lcom/uqm/crashsight/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/FieldSet;->h()V

    .line 358
    :goto_0
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->a:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->e()Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 359
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->b()V

    .line 361
    :cond_1
    invoke-static {}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->b()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->d:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method private d()Lcom/uqm/crashsight/protobuf/DynamicMessage;
    .locals 5

    .line 396
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 404
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->a()Lcom/uqm/crashsight/protobuf/DynamicMessage;

    move-result-object v0

    return-object v0

    .line 397
    :cond_0
    new-instance v0, Lcom/uqm/crashsight/protobuf/DynamicMessage;

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->a:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->b:Lcom/uqm/crashsight/protobuf/FieldSet;

    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->c:[Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    array-length v4, v3

    .line 401
    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    iget-object v4, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->d:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/uqm/crashsight/protobuf/DynamicMessage;-><init>(Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;Lcom/uqm/crashsight/protobuf/FieldSet;[Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)V

    .line 397
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->newUninitializedMessageException(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method private e()Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;
    .locals 5

    .line 435
    new-instance v0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->a:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    invoke-direct {v0, v1}, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;-><init>(Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;)V

    .line 436
    iget-object v1, v0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->b:Lcom/uqm/crashsight/protobuf/FieldSet;

    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->b:Lcom/uqm/crashsight/protobuf/FieldSet;

    invoke-virtual {v1, v2}, Lcom/uqm/crashsight/protobuf/FieldSet;->a(Lcom/uqm/crashsight/protobuf/FieldSet;)V

    .line 437
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->d:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-direct {v0, v1}, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->a(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;

    .line 438
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->c:[Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    iget-object v2, v0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->c:[Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    array-length v3, v1

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private f()V
    .locals 1

    .line 660
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->b:Lcom/uqm/crashsight/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/FieldSet;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 661
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->b:Lcom/uqm/crashsight/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/FieldSet;->g()Lcom/uqm/crashsight/protobuf/FieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->b:Lcom/uqm/crashsight/protobuf/FieldSet;

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;
    .locals 3

    .line 367
    instance-of v0, p1, Lcom/uqm/crashsight/protobuf/DynamicMessage;

    if-eqz v0, :cond_4

    .line 369
    check-cast p1, Lcom/uqm/crashsight/protobuf/DynamicMessage;

    .line 370
    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/DynamicMessage;->a(Lcom/uqm/crashsight/protobuf/DynamicMessage;)Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move-result-object v0

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->a:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    if-ne v0, v1, :cond_3

    .line 374
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->f()V

    .line 375
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->b:Lcom/uqm/crashsight/protobuf/FieldSet;

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/DynamicMessage;->b(Lcom/uqm/crashsight/protobuf/DynamicMessage;)Lcom/uqm/crashsight/protobuf/FieldSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/uqm/crashsight/protobuf/FieldSet;->a(Lcom/uqm/crashsight/protobuf/FieldSet;)V

    .line 376
    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/DynamicMessage;->c(Lcom/uqm/crashsight/protobuf/DynamicMessage;)Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->a(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;

    const/4 v0, 0x0

    .line 377
    :goto_0
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->c:[Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 378
    aget-object v2, v1, v0

    if-nez v2, :cond_0

    .line 379
    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/DynamicMessage;->d(Lcom/uqm/crashsight/protobuf/DynamicMessage;)[Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    move-result-object v2

    aget-object v2, v2, v0

    aput-object v2, v1, v0

    goto :goto_1

    .line 381
    :cond_0
    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/DynamicMessage;->d(Lcom/uqm/crashsight/protobuf/DynamicMessage;)[Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    move-result-object v1

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->c:[Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    aget-object v1, v1, v0

    .line 382
    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/DynamicMessage;->d(Lcom/uqm/crashsight/protobuf/DynamicMessage;)[Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    move-result-object v2

    aget-object v2, v2, v0

    if-eq v1, v2, :cond_1

    .line 383
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->b:Lcom/uqm/crashsight/protobuf/FieldSet;

    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->c:[Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/uqm/crashsight/protobuf/FieldSet;->c(Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;)V

    .line 384
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->c:[Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/DynamicMessage;->d(Lcom/uqm/crashsight/protobuf/DynamicMessage;)[Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    move-result-object v2

    aget-object v2, v2, v0

    aput-object v2, v1, v0

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object p0

    .line 371
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "mergeFrom(Message) can only merge messages of the same type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 390
    :cond_4
    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;

    return-object p1
.end method

.method public final a()Lcom/uqm/crashsight/protobuf/DynamicMessage;
    .locals 5

    .line 426
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->b:Lcom/uqm/crashsight/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/FieldSet;->e()V

    .line 427
    new-instance v0, Lcom/uqm/crashsight/protobuf/DynamicMessage;

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->a:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->b:Lcom/uqm/crashsight/protobuf/FieldSet;

    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->c:[Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    array-length v4, v3

    .line 429
    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    iget-object v4, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->d:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/uqm/crashsight/protobuf/DynamicMessage;-><init>(Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;Lcom/uqm/crashsight/protobuf/FieldSet;[Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)V

    return-object v0
.end method

.method public final synthetic addRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 1

    .line 2592
    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->b(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)V

    .line 2593
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->f()V

    .line 2594
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->b:Lcom/uqm/crashsight/protobuf/FieldSet;

    invoke-virtual {v0, p1, p2}, Lcom/uqm/crashsight/protobuf/FieldSet;->b(Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final synthetic build()Lcom/uqm/crashsight/protobuf/Message;
    .locals 1

    .line 319
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->d()Lcom/uqm/crashsight/protobuf/DynamicMessage;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic build()Lcom/uqm/crashsight/protobuf/MessageLite;
    .locals 1

    .line 319
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->d()Lcom/uqm/crashsight/protobuf/DynamicMessage;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic buildPartial()Lcom/uqm/crashsight/protobuf/Message;
    .locals 1

    .line 319
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->a()Lcom/uqm/crashsight/protobuf/DynamicMessage;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic buildPartial()Lcom/uqm/crashsight/protobuf/MessageLite;
    .locals 1

    .line 319
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->a()Lcom/uqm/crashsight/protobuf/DynamicMessage;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clear()Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 319
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->c()Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clear()Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 1

    .line 319
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->c()Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clear()Lcom/uqm/crashsight/protobuf/MessageLite$Builder;
    .locals 1

    .line 319
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->c()Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clearField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    .line 319
    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->a(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 319
    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->a(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    .line 319
    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->a(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic clone()Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 319
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->e()Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Lcom/uqm/crashsight/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 319
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->e()Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 1

    .line 319
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->e()Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Lcom/uqm/crashsight/protobuf/MessageLite$Builder;
    .locals 1

    .line 319
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->e()Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 319
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->e()Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final getAllFields()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 459
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->b:Lcom/uqm/crashsight/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/FieldSet;->i()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic getDefaultInstanceForType()Lcom/uqm/crashsight/protobuf/Message;
    .locals 1

    .line 6454
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->a:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/DynamicMessage;->a(Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;)Lcom/uqm/crashsight/protobuf/DynamicMessage;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic getDefaultInstanceForType()Lcom/uqm/crashsight/protobuf/MessageLite;
    .locals 1

    .line 5454
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->a:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/DynamicMessage;->a(Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;)Lcom/uqm/crashsight/protobuf/DynamicMessage;

    move-result-object v0

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 449
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->a:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public final getField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;
    .locals 2

    .line 508
    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->b(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)V

    .line 509
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->b:Lcom/uqm/crashsight/protobuf/FieldSet;

    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/FieldSet;->b(Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 511
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 512
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 513
    :cond_0
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->f()Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    sget-object v1, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$JavaType;->i:Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v0, v1, :cond_1

    .line 514
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->w()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move-result-object p1

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/DynamicMessage;->a(Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;)Lcom/uqm/crashsight/protobuf/DynamicMessage;

    move-result-object v0

    goto :goto_0

    .line 516
    :cond_1
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->r()Ljava/lang/Object;

    move-result-object v0

    :cond_2
    :goto_0
    return-object v0
.end method

.method public final getFieldBuilder(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 1

    .line 668
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "getFieldBuilder() called on a dynamic message type."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getOneofFieldDescriptor(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;
    .locals 1

    .line 486
    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->b(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)V

    .line 487
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->c:[Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;->a()I

    move-result p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final getRepeatedFieldBuilder(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;I)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    .line 675
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "getRepeatedFieldBuilder() called on a dynamic message type."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getUnknownFields()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;
    .locals 1

    .line 600
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->d:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public final hasField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Z
    .locals 1

    .line 502
    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->b(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)V

    .line 503
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->b:Lcom/uqm/crashsight/protobuf/FieldSet;

    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/FieldSet;->a(Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;)Z

    move-result p1

    return p1
.end method

.method public final hasOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Z
    .locals 1

    .line 476
    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->b(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)V

    .line 477
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->c:[Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;->a()I

    move-result p1

    aget-object p1, v0, p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public final isInitialized()Z
    .locals 2

    .line 444
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->a:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->b:Lcom/uqm/crashsight/protobuf/FieldSet;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/protobuf/DynamicMessage;->a(Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;Lcom/uqm/crashsight/protobuf/FieldSet;)Z

    move-result v0

    return v0
.end method

.method public final synthetic mergeFrom(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 319
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->a(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic mergeFrom(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    .line 319
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->a(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 319
    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->a(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    .line 319
    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->a(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic newBuilderForField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 2

    .line 4464
    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->b(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)V

    .line 4466
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->f()Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    sget-object v1, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$JavaType;->i:Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v0, v1, :cond_0

    .line 4471
    new-instance v0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->w()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;-><init>(Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;)V

    return-object v0

    .line 4467
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "newBuilderForField is only valid for fields with message type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final synthetic setField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 3

    .line 3524
    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->b(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)V

    .line 3525
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->f()V

    .line 3531
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->h()Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v0

    sget-object v1, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;->n:Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;

    if-ne v0, v1, :cond_1

    .line 3650
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3651
    move-object v0, p2

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 3652
    invoke-static {v1}, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 3655
    :cond_0
    invoke-static {p2}, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->a(Ljava/lang/Object;)V

    .line 3534
    :cond_1
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->u()Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 3536
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;->a()I

    move-result v0

    .line 3537
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->c:[Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    aget-object v1, v1, v0

    if-eqz v1, :cond_2

    if-eq v1, p1, :cond_2

    .line 3539
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->b:Lcom/uqm/crashsight/protobuf/FieldSet;

    invoke-virtual {v2, v1}, Lcom/uqm/crashsight/protobuf/FieldSet;->c(Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;)V

    .line 3541
    :cond_2
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->c:[Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    aput-object p1, v1, v0

    goto :goto_1

    .line 3542
    :cond_3
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->d()Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;->i()Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor$Syntax;

    move-result-object v0

    sget-object v1, Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor$Syntax;->b:Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor$Syntax;

    if-ne v0, v1, :cond_4

    .line 3543
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->o()Z

    move-result v0

    if-nez v0, :cond_4

    .line 3544
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->f()Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    sget-object v1, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$JavaType;->i:Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-eq v0, v1, :cond_4

    .line 3545
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->r()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3547
    iget-object p2, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->b:Lcom/uqm/crashsight/protobuf/FieldSet;

    invoke-virtual {p2, p1}, Lcom/uqm/crashsight/protobuf/FieldSet;->c(Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;)V

    return-object p0

    .line 3551
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->b:Lcom/uqm/crashsight/protobuf/FieldSet;

    invoke-virtual {v0, p1, p2}, Lcom/uqm/crashsight/protobuf/FieldSet;->a(Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final bridge synthetic setUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    .line 1605
    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DynamicMessage$Builder;->d:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    return-object p0
.end method
