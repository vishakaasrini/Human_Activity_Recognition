¤º
óÄ
D
AddV2
x"T
y"T
z"T"
Ttype:
2	
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
?
Mul
x"T
y"T
z"T"
Ttype:
2	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
9
Softmax
logits"T
softmax"T"
Ttype:
2
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
Á
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ¨
@
StaticRegexFullMatch	
input

output
"
patternstring
ö
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
°
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type/
output_handleéèelement_dtype"
element_dtypetype"

shape_typetype:
2	

TensorListReserve
element_shape"
shape_type
num_elements(
handleéèelement_dtype"
element_dtypetype"

shape_typetype:
2	

TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsintÿÿÿÿÿÿÿÿÿ
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 

While

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint
"serve*2.8.02v2.8.0-rc1-32-g3f878cff5b68úÛ
|
dense_75/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:

è* 
shared_namedense_75/kernel
u
#dense_75/kernel/Read/ReadVariableOpReadVariableOpdense_75/kernel* 
_output_shapes
:

è*
dtype0
s
dense_75/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:è*
shared_namedense_75/bias
l
!dense_75/bias/Read/ReadVariableOpReadVariableOpdense_75/bias*
_output_shapes	
:è*
dtype0
|
dense_76/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
èÒ* 
shared_namedense_76/kernel
u
#dense_76/kernel/Read/ReadVariableOpReadVariableOpdense_76/kernel* 
_output_shapes
:
èÒ*
dtype0
s
dense_76/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:Ò*
shared_namedense_76/bias
l
!dense_76/bias/Read/ReadVariableOpReadVariableOpdense_76/bias*
_output_shapes	
:Ò*
dtype0
{
dense_77/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Ò* 
shared_namedense_77/kernel
t
#dense_77/kernel/Read/ReadVariableOpReadVariableOpdense_77/kernel*
_output_shapes
:	Ò*
dtype0
r
dense_77/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_77/bias
k
!dense_77/bias/Read/ReadVariableOpReadVariableOpdense_77/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0

lstm_25/lstm_cell_25/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:h*,
shared_namelstm_25/lstm_cell_25/kernel

/lstm_25/lstm_cell_25/kernel/Read/ReadVariableOpReadVariableOplstm_25/lstm_cell_25/kernel*
_output_shapes

:h*
dtype0
¦
%lstm_25/lstm_cell_25/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:h*6
shared_name'%lstm_25/lstm_cell_25/recurrent_kernel

9lstm_25/lstm_cell_25/recurrent_kernel/Read/ReadVariableOpReadVariableOp%lstm_25/lstm_cell_25/recurrent_kernel*
_output_shapes

:h*
dtype0

lstm_25/lstm_cell_25/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:h**
shared_namelstm_25/lstm_cell_25/bias

-lstm_25/lstm_cell_25/bias/Read/ReadVariableOpReadVariableOplstm_25/lstm_cell_25/bias*
_output_shapes
:h*
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0

Adam/dense_75/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:

è*'
shared_nameAdam/dense_75/kernel/m

*Adam/dense_75/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_75/kernel/m* 
_output_shapes
:

è*
dtype0

Adam/dense_75/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:è*%
shared_nameAdam/dense_75/bias/m
z
(Adam/dense_75/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_75/bias/m*
_output_shapes	
:è*
dtype0

Adam/dense_76/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
èÒ*'
shared_nameAdam/dense_76/kernel/m

*Adam/dense_76/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_76/kernel/m* 
_output_shapes
:
èÒ*
dtype0

Adam/dense_76/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:Ò*%
shared_nameAdam/dense_76/bias/m
z
(Adam/dense_76/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_76/bias/m*
_output_shapes	
:Ò*
dtype0

Adam/dense_77/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Ò*'
shared_nameAdam/dense_77/kernel/m

*Adam/dense_77/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_77/kernel/m*
_output_shapes
:	Ò*
dtype0

Adam/dense_77/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_77/bias/m
y
(Adam/dense_77/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_77/bias/m*
_output_shapes
:*
dtype0
 
"Adam/lstm_25/lstm_cell_25/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:h*3
shared_name$"Adam/lstm_25/lstm_cell_25/kernel/m

6Adam/lstm_25/lstm_cell_25/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_25/lstm_cell_25/kernel/m*
_output_shapes

:h*
dtype0
´
,Adam/lstm_25/lstm_cell_25/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:h*=
shared_name.,Adam/lstm_25/lstm_cell_25/recurrent_kernel/m
­
@Adam/lstm_25/lstm_cell_25/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp,Adam/lstm_25/lstm_cell_25/recurrent_kernel/m*
_output_shapes

:h*
dtype0

 Adam/lstm_25/lstm_cell_25/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:h*1
shared_name" Adam/lstm_25/lstm_cell_25/bias/m

4Adam/lstm_25/lstm_cell_25/bias/m/Read/ReadVariableOpReadVariableOp Adam/lstm_25/lstm_cell_25/bias/m*
_output_shapes
:h*
dtype0

Adam/dense_75/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:

è*'
shared_nameAdam/dense_75/kernel/v

*Adam/dense_75/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_75/kernel/v* 
_output_shapes
:

è*
dtype0

Adam/dense_75/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:è*%
shared_nameAdam/dense_75/bias/v
z
(Adam/dense_75/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_75/bias/v*
_output_shapes	
:è*
dtype0

Adam/dense_76/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
èÒ*'
shared_nameAdam/dense_76/kernel/v

*Adam/dense_76/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_76/kernel/v* 
_output_shapes
:
èÒ*
dtype0

Adam/dense_76/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:Ò*%
shared_nameAdam/dense_76/bias/v
z
(Adam/dense_76/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_76/bias/v*
_output_shapes	
:Ò*
dtype0

Adam/dense_77/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Ò*'
shared_nameAdam/dense_77/kernel/v

*Adam/dense_77/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_77/kernel/v*
_output_shapes
:	Ò*
dtype0

Adam/dense_77/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_77/bias/v
y
(Adam/dense_77/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_77/bias/v*
_output_shapes
:*
dtype0
 
"Adam/lstm_25/lstm_cell_25/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:h*3
shared_name$"Adam/lstm_25/lstm_cell_25/kernel/v

6Adam/lstm_25/lstm_cell_25/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_25/lstm_cell_25/kernel/v*
_output_shapes

:h*
dtype0
´
,Adam/lstm_25/lstm_cell_25/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:h*=
shared_name.,Adam/lstm_25/lstm_cell_25/recurrent_kernel/v
­
@Adam/lstm_25/lstm_cell_25/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp,Adam/lstm_25/lstm_cell_25/recurrent_kernel/v*
_output_shapes

:h*
dtype0

 Adam/lstm_25/lstm_cell_25/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:h*1
shared_name" Adam/lstm_25/lstm_cell_25/bias/v

4Adam/lstm_25/lstm_cell_25/bias/v/Read/ReadVariableOpReadVariableOp Adam/lstm_25/lstm_cell_25/bias/v*
_output_shapes
:h*
dtype0

NoOpNoOp
P
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*½O
value³OB°O B©O

layer_with_weights-0
layer-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
layer_with_weights-2
layer-5
layer-6
layer_with_weights-3
layer-7
		optimizer

	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures*
Á
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
_random_generator
__call__
*&call_and_return_all_conditional_losses*
¥
	variables
trainable_variables
regularization_losses
	keras_api
_random_generator
 __call__
*!&call_and_return_all_conditional_losses* 

"	variables
#trainable_variables
$regularization_losses
%	keras_api
&__call__
*'&call_and_return_all_conditional_losses* 
¦

(kernel
)bias
*	variables
+trainable_variables
,regularization_losses
-	keras_api
.__call__
*/&call_and_return_all_conditional_losses*
¥
0	variables
1trainable_variables
2regularization_losses
3	keras_api
4_random_generator
5__call__
*6&call_and_return_all_conditional_losses* 
¦

7kernel
8bias
9	variables
:trainable_variables
;regularization_losses
<	keras_api
=__call__
*>&call_and_return_all_conditional_losses*
¥
?	variables
@trainable_variables
Aregularization_losses
B	keras_api
C_random_generator
D__call__
*E&call_and_return_all_conditional_losses* 
¦

Fkernel
Gbias
H	variables
Itrainable_variables
Jregularization_losses
K	keras_api
L__call__
*M&call_and_return_all_conditional_losses*
ø
Niter

Obeta_1

Pbeta_2
	Qdecay
Rlearning_rate(m)m7m8m Fm¡Gm¢Sm£Tm¤Um¥(v¦)v§7v¨8v©FvªGv«Sv¬Tv­Uv®*
C
S0
T1
U2
(3
)4
75
86
F7
G8*
C
S0
T1
U2
(3
)4
75
86
F7
G8*
* 
°
Vnon_trainable_variables

Wlayers
Xmetrics
Ylayer_regularization_losses
Zlayer_metrics

	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 

[serving_default* 
ã
\
state_size

Skernel
Trecurrent_kernel
Ubias
]	variables
^trainable_variables
_regularization_losses
`	keras_api
a_random_generator
b__call__
*c&call_and_return_all_conditional_losses*
* 

S0
T1
U2*

S0
T1
U2*
* 


dstates
enon_trainable_variables

flayers
gmetrics
hlayer_regularization_losses
ilayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 

jnon_trainable_variables

klayers
lmetrics
mlayer_regularization_losses
nlayer_metrics
	variables
trainable_variables
regularization_losses
 __call__
*!&call_and_return_all_conditional_losses
&!"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
* 

onon_trainable_variables

players
qmetrics
rlayer_regularization_losses
slayer_metrics
"	variables
#trainable_variables
$regularization_losses
&__call__
*'&call_and_return_all_conditional_losses
&'"call_and_return_conditional_losses* 
* 
* 
_Y
VARIABLE_VALUEdense_75/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_75/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*

(0
)1*

(0
)1*
* 

tnon_trainable_variables

ulayers
vmetrics
wlayer_regularization_losses
xlayer_metrics
*	variables
+trainable_variables
,regularization_losses
.__call__
*/&call_and_return_all_conditional_losses
&/"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

ynon_trainable_variables

zlayers
{metrics
|layer_regularization_losses
}layer_metrics
0	variables
1trainable_variables
2regularization_losses
5__call__
*6&call_and_return_all_conditional_losses
&6"call_and_return_conditional_losses* 
* 
* 
* 
_Y
VARIABLE_VALUEdense_76/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_76/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*

70
81*

70
81*
* 

~non_trainable_variables

layers
metrics
 layer_regularization_losses
layer_metrics
9	variables
:trainable_variables
;regularization_losses
=__call__
*>&call_and_return_all_conditional_losses
&>"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
?	variables
@trainable_variables
Aregularization_losses
D__call__
*E&call_and_return_all_conditional_losses
&E"call_and_return_conditional_losses* 
* 
* 
* 
_Y
VARIABLE_VALUEdense_77/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_77/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*

F0
G1*

F0
G1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
H	variables
Itrainable_variables
Jregularization_losses
L__call__
*M&call_and_return_all_conditional_losses
&M"call_and_return_conditional_losses*
* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUElstm_25/lstm_cell_25/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUE%lstm_25/lstm_cell_25/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUElstm_25/lstm_cell_25/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
* 
<
0
1
2
3
4
5
6
7*

0
1*
* 
* 
* 
* 

S0
T1
U2*

S0
T1
U2*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
]	variables
^trainable_variables
_regularization_losses
b__call__
*c&call_and_return_all_conditional_losses
&c"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

0*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
<

total

count
	variables
	keras_api*
M

total

count

_fn_kwargs
	variables
	keras_api*
* 
* 
* 
* 
* 
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

0
1*

	variables*
|
VARIABLE_VALUEAdam/dense_75/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_75/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_76/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_76/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_77/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_77/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE"Adam/lstm_25/lstm_cell_25/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE,Adam/lstm_25/lstm_cell_25/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUE Adam/lstm_25/lstm_cell_25/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_75/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_75/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_76/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_76/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_77/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_77/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE"Adam/lstm_25/lstm_cell_25/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE,Adam/lstm_25/lstm_cell_25/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUE Adam/lstm_25/lstm_cell_25/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

serving_default_lstm_25_inputPlaceholder*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype0* 
shape:ÿÿÿÿÿÿÿÿÿ2

StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_25_inputlstm_25/lstm_cell_25/kernel%lstm_25/lstm_cell_25/recurrent_kernellstm_25/lstm_cell_25/biasdense_75/kerneldense_75/biasdense_76/kerneldense_76/biasdense_77/kerneldense_77/bias*
Tin
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*+
_read_only_resource_inputs
		*-
config_proto

CPU

GPU 2J 8 *.
f)R'
%__inference_signature_wrapper_1042975
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
°
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_75/kernel/Read/ReadVariableOp!dense_75/bias/Read/ReadVariableOp#dense_76/kernel/Read/ReadVariableOp!dense_76/bias/Read/ReadVariableOp#dense_77/kernel/Read/ReadVariableOp!dense_77/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp/lstm_25/lstm_cell_25/kernel/Read/ReadVariableOp9lstm_25/lstm_cell_25/recurrent_kernel/Read/ReadVariableOp-lstm_25/lstm_cell_25/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp*Adam/dense_75/kernel/m/Read/ReadVariableOp(Adam/dense_75/bias/m/Read/ReadVariableOp*Adam/dense_76/kernel/m/Read/ReadVariableOp(Adam/dense_76/bias/m/Read/ReadVariableOp*Adam/dense_77/kernel/m/Read/ReadVariableOp(Adam/dense_77/bias/m/Read/ReadVariableOp6Adam/lstm_25/lstm_cell_25/kernel/m/Read/ReadVariableOp@Adam/lstm_25/lstm_cell_25/recurrent_kernel/m/Read/ReadVariableOp4Adam/lstm_25/lstm_cell_25/bias/m/Read/ReadVariableOp*Adam/dense_75/kernel/v/Read/ReadVariableOp(Adam/dense_75/bias/v/Read/ReadVariableOp*Adam/dense_76/kernel/v/Read/ReadVariableOp(Adam/dense_76/bias/v/Read/ReadVariableOp*Adam/dense_77/kernel/v/Read/ReadVariableOp(Adam/dense_77/bias/v/Read/ReadVariableOp6Adam/lstm_25/lstm_cell_25/kernel/v/Read/ReadVariableOp@Adam/lstm_25/lstm_cell_25/recurrent_kernel/v/Read/ReadVariableOp4Adam/lstm_25/lstm_cell_25/bias/v/Read/ReadVariableOpConst*1
Tin*
(2&	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *)
f$R"
 __inference__traced_save_1043972
Û
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_75/kerneldense_75/biasdense_76/kerneldense_76/biasdense_77/kerneldense_77/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_25/lstm_cell_25/kernel%lstm_25/lstm_cell_25/recurrent_kernellstm_25/lstm_cell_25/biastotalcounttotal_1count_1Adam/dense_75/kernel/mAdam/dense_75/bias/mAdam/dense_76/kernel/mAdam/dense_76/bias/mAdam/dense_77/kernel/mAdam/dense_77/bias/m"Adam/lstm_25/lstm_cell_25/kernel/m,Adam/lstm_25/lstm_cell_25/recurrent_kernel/m Adam/lstm_25/lstm_cell_25/bias/mAdam/dense_75/kernel/vAdam/dense_75/bias/vAdam/dense_76/kernel/vAdam/dense_76/bias/vAdam/dense_77/kernel/vAdam/dense_77/bias/v"Adam/lstm_25/lstm_cell_25/kernel/v,Adam/lstm_25/lstm_cell_25/recurrent_kernel/v Adam/lstm_25/lstm_cell_25/bias/v*0
Tin)
'2%*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *,
f'R%
#__inference__traced_restore_1044090°¦
Ô"
³
J__inference_sequential_25_layer_call_and_return_conditional_losses_1042509
lstm_25_input!
lstm_25_1042482:h!
lstm_25_1042484:h
lstm_25_1042486:h$
dense_75_1042491:

è
dense_75_1042493:	è$
dense_76_1042497:
èÒ
dense_76_1042499:	Ò#
dense_77_1042503:	Ò
dense_77_1042505:
identity¢ dense_75/StatefulPartitionedCall¢ dense_76/StatefulPartitionedCall¢ dense_77/StatefulPartitionedCall¢lstm_25/StatefulPartitionedCall
lstm_25/StatefulPartitionedCallStatefulPartitionedCalllstm_25_inputlstm_25_1042482lstm_25_1042484lstm_25_1042486*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_25_layer_call_and_return_conditional_losses_1042000ã
dropout_75/PartitionedCallPartitionedCall(lstm_25/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dropout_75_layer_call_and_return_conditional_losses_1042013Û
flatten_25/PartitionedCallPartitionedCall#dropout_75/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_flatten_25_layer_call_and_return_conditional_losses_1042021
 dense_75/StatefulPartitionedCallStatefulPartitionedCall#flatten_25/PartitionedCall:output:0dense_75_1042491dense_75_1042493*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_75_layer_call_and_return_conditional_losses_1042034á
dropout_76/PartitionedCallPartitionedCall)dense_75/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dropout_76_layer_call_and_return_conditional_losses_1042045
 dense_76/StatefulPartitionedCallStatefulPartitionedCall#dropout_76/PartitionedCall:output:0dense_76_1042497dense_76_1042499*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÒ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_76_layer_call_and_return_conditional_losses_1042058á
dropout_77/PartitionedCallPartitionedCall)dense_76/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÒ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dropout_77_layer_call_and_return_conditional_losses_1042069
 dense_77/StatefulPartitionedCallStatefulPartitionedCall#dropout_77/PartitionedCall:output:0dense_77_1042503dense_77_1042505*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_77_layer_call_and_return_conditional_losses_1042082x
IdentityIdentity)dense_77/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÑ
NoOpNoOp!^dense_75/StatefulPartitionedCall!^dense_76/StatefulPartitionedCall!^dense_77/StatefulPartitionedCall ^lstm_25/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):ÿÿÿÿÿÿÿÿÿ2: : : : : : : : : 2D
 dense_75/StatefulPartitionedCall dense_75/StatefulPartitionedCall2D
 dense_76/StatefulPartitionedCall dense_76/StatefulPartitionedCall2D
 dense_77/StatefulPartitionedCall dense_77/StatefulPartitionedCall2B
lstm_25/StatefulPartitionedCalllstm_25/StatefulPartitionedCall:Z V
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
'
_user_specified_namelstm_25_input
àL
é
 __inference__traced_save_1043972
file_prefix.
*savev2_dense_75_kernel_read_readvariableop,
(savev2_dense_75_bias_read_readvariableop.
*savev2_dense_76_kernel_read_readvariableop,
(savev2_dense_76_bias_read_readvariableop.
*savev2_dense_77_kernel_read_readvariableop,
(savev2_dense_77_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop:
6savev2_lstm_25_lstm_cell_25_kernel_read_readvariableopD
@savev2_lstm_25_lstm_cell_25_recurrent_kernel_read_readvariableop8
4savev2_lstm_25_lstm_cell_25_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop5
1savev2_adam_dense_75_kernel_m_read_readvariableop3
/savev2_adam_dense_75_bias_m_read_readvariableop5
1savev2_adam_dense_76_kernel_m_read_readvariableop3
/savev2_adam_dense_76_bias_m_read_readvariableop5
1savev2_adam_dense_77_kernel_m_read_readvariableop3
/savev2_adam_dense_77_bias_m_read_readvariableopA
=savev2_adam_lstm_25_lstm_cell_25_kernel_m_read_readvariableopK
Gsavev2_adam_lstm_25_lstm_cell_25_recurrent_kernel_m_read_readvariableop?
;savev2_adam_lstm_25_lstm_cell_25_bias_m_read_readvariableop5
1savev2_adam_dense_75_kernel_v_read_readvariableop3
/savev2_adam_dense_75_bias_v_read_readvariableop5
1savev2_adam_dense_76_kernel_v_read_readvariableop3
/savev2_adam_dense_76_bias_v_read_readvariableop5
1savev2_adam_dense_77_kernel_v_read_readvariableop3
/savev2_adam_dense_77_bias_v_read_readvariableopA
=savev2_adam_lstm_25_lstm_cell_25_kernel_v_read_readvariableopK
Gsavev2_adam_lstm_25_lstm_cell_25_recurrent_kernel_v_read_readvariableop?
;savev2_adam_lstm_25_lstm_cell_25_bias_v_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:%*
dtype0*®
value¤B¡%B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH·
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:%*
dtype0*]
valueTBR%B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B À
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_75_kernel_read_readvariableop(savev2_dense_75_bias_read_readvariableop*savev2_dense_76_kernel_read_readvariableop(savev2_dense_76_bias_read_readvariableop*savev2_dense_77_kernel_read_readvariableop(savev2_dense_77_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop6savev2_lstm_25_lstm_cell_25_kernel_read_readvariableop@savev2_lstm_25_lstm_cell_25_recurrent_kernel_read_readvariableop4savev2_lstm_25_lstm_cell_25_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop1savev2_adam_dense_75_kernel_m_read_readvariableop/savev2_adam_dense_75_bias_m_read_readvariableop1savev2_adam_dense_76_kernel_m_read_readvariableop/savev2_adam_dense_76_bias_m_read_readvariableop1savev2_adam_dense_77_kernel_m_read_readvariableop/savev2_adam_dense_77_bias_m_read_readvariableop=savev2_adam_lstm_25_lstm_cell_25_kernel_m_read_readvariableopGsavev2_adam_lstm_25_lstm_cell_25_recurrent_kernel_m_read_readvariableop;savev2_adam_lstm_25_lstm_cell_25_bias_m_read_readvariableop1savev2_adam_dense_75_kernel_v_read_readvariableop/savev2_adam_dense_75_bias_v_read_readvariableop1savev2_adam_dense_76_kernel_v_read_readvariableop/savev2_adam_dense_76_bias_v_read_readvariableop1savev2_adam_dense_77_kernel_v_read_readvariableop/savev2_adam_dense_77_bias_v_read_readvariableop=savev2_adam_lstm_25_lstm_cell_25_kernel_v_read_readvariableopGsavev2_adam_lstm_25_lstm_cell_25_recurrent_kernel_v_read_readvariableop;savev2_adam_lstm_25_lstm_cell_25_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *3
dtypes)
'2%	
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*
_input_shapes
: :

è:è:
èÒ:Ò:	Ò:: : : : : :h:h:h: : : : :

è:è:
èÒ:Ò:	Ò::h:h:h:

è:è:
èÒ:Ò:	Ò::h:h:h: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:&"
 
_output_shapes
:

è:!

_output_shapes	
:è:&"
 
_output_shapes
:
èÒ:!

_output_shapes	
:Ò:%!

_output_shapes
:	Ò: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:h:$ 

_output_shapes

:h: 

_output_shapes
:h:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :&"
 
_output_shapes
:

è:!

_output_shapes	
:è:&"
 
_output_shapes
:
èÒ:!

_output_shapes	
:Ò:%!

_output_shapes
:	Ò: 

_output_shapes
::$ 

_output_shapes

:h:$ 

_output_shapes

:h: 

_output_shapes
:h:&"
 
_output_shapes
:

è:!

_output_shapes	
:è:&"
 
_output_shapes
:
èÒ:!

_output_shapes	
:Ò:% !

_output_shapes
:	Ò: !

_output_shapes
::$" 

_output_shapes

:h:$# 

_output_shapes

:h: $

_output_shapes
:h:%

_output_shapes
: 
8

D__inference_lstm_25_layer_call_and_return_conditional_losses_1041651

inputs&
lstm_cell_25_1041569:h&
lstm_cell_25_1041571:h"
lstm_cell_25_1041573:h
identity¢$lstm_cell_25/StatefulPartitionedCall¢while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maskù
$lstm_cell_25/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_25_1041569lstm_cell_25_1041571lstm_cell_25_1041573*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_lstm_cell_25_layer_call_and_return_conditional_losses_1041568n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ¼
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_25_1041569lstm_cell_25_1041571lstm_cell_25_1041573*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1041582*
condR
while_cond_1041581*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿu
NoOpNoOp%^lstm_cell_25/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2L
$lstm_cell_25/StatefulPartitionedCall$lstm_cell_25/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ý	
f
G__inference_dropout_76_layer_call_and_return_conditional_losses_1042173

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿèC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>§
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿèp
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿèj
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿèZ
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿè:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè
 
_user_specified_nameinputs
ê
ô
.__inference_lstm_cell_25_layer_call_fn_1043777

inputs
states_0
states_1
unknown:h
	unknown_0:h
	unknown_1:h
identity

identity_1

identity_2¢StatefulPartitionedCall©
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_lstm_cell_25_layer_call_and_return_conditional_losses_1041714o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿq

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/1


é
/__inference_sequential_25_layer_call_fn_1042479
lstm_25_input
unknown:h
	unknown_0:h
	unknown_1:h
	unknown_2:

è
	unknown_3:	è
	unknown_4:
èÒ
	unknown_5:	Ò
	unknown_6:	Ò
	unknown_7:
identity¢StatefulPartitionedCallÁ
StatefulPartitionedCallStatefulPartitionedCalllstm_25_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*+
_read_only_resource_inputs
		*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_sequential_25_layer_call_and_return_conditional_losses_1042435o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):ÿÿÿÿÿÿÿÿÿ2: : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
'
_user_specified_namelstm_25_input
º
È
while_cond_1042286
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1042286___redundant_placeholder05
1while_while_cond_1042286___redundant_placeholder15
1while_while_cond_1042286___redundant_placeholder25
1while_while_cond_1042286___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
J

D__inference_lstm_25_layer_call_and_return_conditional_losses_1042000

inputs=
+lstm_cell_25_matmul_readvariableop_resource:h?
-lstm_cell_25_matmul_1_readvariableop_resource:h:
,lstm_cell_25_biasadd_readvariableop_resource:h
identity¢#lstm_cell_25/BiasAdd/ReadVariableOp¢"lstm_cell_25/MatMul/ReadVariableOp¢$lstm_cell_25/MatMul_1/ReadVariableOp¢while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:2ÿÿÿÿÿÿÿÿÿD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
"lstm_cell_25/MatMul/ReadVariableOpReadVariableOp+lstm_cell_25_matmul_readvariableop_resource*
_output_shapes

:h*
dtype0
lstm_cell_25/MatMulMatMulstrided_slice_2:output:0*lstm_cell_25/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
$lstm_cell_25/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_25_matmul_1_readvariableop_resource*
_output_shapes

:h*
dtype0
lstm_cell_25/MatMul_1MatMulzeros:output:0,lstm_cell_25/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
lstm_cell_25/addAddV2lstm_cell_25/MatMul:product:0lstm_cell_25/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
#lstm_cell_25/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_25_biasadd_readvariableop_resource*
_output_shapes
:h*
dtype0
lstm_cell_25/BiasAddBiasAddlstm_cell_25/add:z:0+lstm_cell_25/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh^
lstm_cell_25/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ý
lstm_cell_25/splitSplit%lstm_cell_25/split/split_dim:output:0lstm_cell_25/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_splitn
lstm_cell_25/SigmoidSigmoidlstm_cell_25/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
lstm_cell_25/Sigmoid_1Sigmoidlstm_cell_25/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
lstm_cell_25/mulMullstm_cell_25/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
lstm_cell_25/ReluRelulstm_cell_25/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_25/mul_1Mullstm_cell_25/Sigmoid:y:0lstm_cell_25/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ{
lstm_cell_25/add_1AddV2lstm_cell_25/mul:z:0lstm_cell_25/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
lstm_cell_25/Sigmoid_2Sigmoidlstm_cell_25/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
lstm_cell_25/Relu_1Relulstm_cell_25/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_25/mul_2Mullstm_cell_25/Sigmoid_2:y:0!lstm_cell_25/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_25_matmul_readvariableop_resource-lstm_cell_25_matmul_1_readvariableop_resource,lstm_cell_25_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1041916*
condR
while_cond_1041915*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Â
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:2ÿÿÿÿÿÿÿÿÿ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2À
NoOpNoOp$^lstm_cell_25/BiasAdd/ReadVariableOp#^lstm_cell_25/MatMul/ReadVariableOp%^lstm_cell_25/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ2: : : 2J
#lstm_cell_25/BiasAdd/ReadVariableOp#lstm_cell_25/BiasAdd/ReadVariableOp2H
"lstm_cell_25/MatMul/ReadVariableOp"lstm_cell_25/MatMul/ReadVariableOp2L
$lstm_cell_25/MatMul_1/ReadVariableOp$lstm_cell_25/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
ê
e
G__inference_dropout_75_layer_call_and_return_conditional_losses_1043606

inputs

identity_1R
IdentityIdentityinputs*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2_

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ2:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
8

D__inference_lstm_25_layer_call_and_return_conditional_losses_1041842

inputs&
lstm_cell_25_1041760:h&
lstm_cell_25_1041762:h"
lstm_cell_25_1041764:h
identity¢$lstm_cell_25/StatefulPartitionedCall¢while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maskù
$lstm_cell_25/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_25_1041760lstm_cell_25_1041762lstm_cell_25_1041764*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_lstm_cell_25_layer_call_and_return_conditional_losses_1041714n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ¼
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_25_1041760lstm_cell_25_1041762lstm_cell_25_1041764*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1041773*
condR
while_cond_1041772*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿu
NoOpNoOp%^lstm_cell_25/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2L
$lstm_cell_25/StatefulPartitionedCall$lstm_cell_25/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
º
È
while_cond_1043220
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1043220___redundant_placeholder05
1while_while_cond_1043220___redundant_placeholder15
1while_while_cond_1043220___redundant_placeholder25
1while_while_cond_1043220___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
¿"
¬
J__inference_sequential_25_layer_call_and_return_conditional_losses_1042089

inputs!
lstm_25_1042001:h!
lstm_25_1042003:h
lstm_25_1042005:h$
dense_75_1042035:

è
dense_75_1042037:	è$
dense_76_1042059:
èÒ
dense_76_1042061:	Ò#
dense_77_1042083:	Ò
dense_77_1042085:
identity¢ dense_75/StatefulPartitionedCall¢ dense_76/StatefulPartitionedCall¢ dense_77/StatefulPartitionedCall¢lstm_25/StatefulPartitionedCall
lstm_25/StatefulPartitionedCallStatefulPartitionedCallinputslstm_25_1042001lstm_25_1042003lstm_25_1042005*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_25_layer_call_and_return_conditional_losses_1042000ã
dropout_75/PartitionedCallPartitionedCall(lstm_25/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dropout_75_layer_call_and_return_conditional_losses_1042013Û
flatten_25/PartitionedCallPartitionedCall#dropout_75/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_flatten_25_layer_call_and_return_conditional_losses_1042021
 dense_75/StatefulPartitionedCallStatefulPartitionedCall#flatten_25/PartitionedCall:output:0dense_75_1042035dense_75_1042037*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_75_layer_call_and_return_conditional_losses_1042034á
dropout_76/PartitionedCallPartitionedCall)dense_75/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dropout_76_layer_call_and_return_conditional_losses_1042045
 dense_76/StatefulPartitionedCallStatefulPartitionedCall#dropout_76/PartitionedCall:output:0dense_76_1042059dense_76_1042061*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÒ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_76_layer_call_and_return_conditional_losses_1042058á
dropout_77/PartitionedCallPartitionedCall)dense_76/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÒ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dropout_77_layer_call_and_return_conditional_losses_1042069
 dense_77/StatefulPartitionedCallStatefulPartitionedCall#dropout_77/PartitionedCall:output:0dense_77_1042083dense_77_1042085*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_77_layer_call_and_return_conditional_losses_1042082x
IdentityIdentity)dense_77/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÑ
NoOpNoOp!^dense_75/StatefulPartitionedCall!^dense_76/StatefulPartitionedCall!^dense_77/StatefulPartitionedCall ^lstm_25/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):ÿÿÿÿÿÿÿÿÿ2: : : : : : : : : 2D
 dense_75/StatefulPartitionedCall dense_75/StatefulPartitionedCall2D
 dense_76/StatefulPartitionedCall dense_76/StatefulPartitionedCall2D
 dense_77/StatefulPartitionedCall dense_77/StatefulPartitionedCall2B
lstm_25/StatefulPartitionedCalllstm_25/StatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
¨

ù
E__inference_dense_75_layer_call_and_return_conditional_losses_1043649

inputs2
matmul_readvariableop_resource:

è.
biasadd_readvariableop_resource:	è
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:

è*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿès
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:è*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿèQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿèb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿèw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
_user_specified_nameinputs
þ
³
)__inference_lstm_25_layer_call_fn_1043008

inputs
unknown:h
	unknown_0:h
	unknown_1:h
identity¢StatefulPartitionedCallê
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_25_layer_call_and_return_conditional_losses_1042000s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
Àq

J__inference_sequential_25_layer_call_and_return_conditional_losses_1042760

inputsE
3lstm_25_lstm_cell_25_matmul_readvariableop_resource:hG
5lstm_25_lstm_cell_25_matmul_1_readvariableop_resource:hB
4lstm_25_lstm_cell_25_biasadd_readvariableop_resource:h;
'dense_75_matmul_readvariableop_resource:

è7
(dense_75_biasadd_readvariableop_resource:	è;
'dense_76_matmul_readvariableop_resource:
èÒ7
(dense_76_biasadd_readvariableop_resource:	Ò:
'dense_77_matmul_readvariableop_resource:	Ò6
(dense_77_biasadd_readvariableop_resource:
identity¢dense_75/BiasAdd/ReadVariableOp¢dense_75/MatMul/ReadVariableOp¢dense_76/BiasAdd/ReadVariableOp¢dense_76/MatMul/ReadVariableOp¢dense_77/BiasAdd/ReadVariableOp¢dense_77/MatMul/ReadVariableOp¢+lstm_25/lstm_cell_25/BiasAdd/ReadVariableOp¢*lstm_25/lstm_cell_25/MatMul/ReadVariableOp¢,lstm_25/lstm_cell_25/MatMul_1/ReadVariableOp¢lstm_25/whileC
lstm_25/ShapeShapeinputs*
T0*
_output_shapes
:e
lstm_25/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_25/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_25/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ù
lstm_25/strided_sliceStridedSlicelstm_25/Shape:output:0$lstm_25/strided_slice/stack:output:0&lstm_25/strided_slice/stack_1:output:0&lstm_25/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_25/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
lstm_25/zeros/packedPacklstm_25/strided_slice:output:0lstm_25/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_25/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_25/zerosFilllstm_25/zeros/packed:output:0lstm_25/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ
lstm_25/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
lstm_25/zeros_1/packedPacklstm_25/strided_slice:output:0!lstm_25/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_25/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_25/zeros_1Filllstm_25/zeros_1/packed:output:0lstm_25/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
lstm_25/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          }
lstm_25/transpose	Transposeinputslstm_25/transpose/perm:output:0*
T0*+
_output_shapes
:2ÿÿÿÿÿÿÿÿÿT
lstm_25/Shape_1Shapelstm_25/transpose:y:0*
T0*
_output_shapes
:g
lstm_25/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_25/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_25/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_25/strided_slice_1StridedSlicelstm_25/Shape_1:output:0&lstm_25/strided_slice_1/stack:output:0(lstm_25/strided_slice_1/stack_1:output:0(lstm_25/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_25/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÌ
lstm_25/TensorArrayV2TensorListReserve,lstm_25/TensorArrayV2/element_shape:output:0 lstm_25/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
=lstm_25/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ø
/lstm_25/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_25/transpose:y:0Flstm_25/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒg
lstm_25/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_25/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_25/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_25/strided_slice_2StridedSlicelstm_25/transpose:y:0&lstm_25/strided_slice_2/stack:output:0(lstm_25/strided_slice_2/stack_1:output:0(lstm_25/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
*lstm_25/lstm_cell_25/MatMul/ReadVariableOpReadVariableOp3lstm_25_lstm_cell_25_matmul_readvariableop_resource*
_output_shapes

:h*
dtype0­
lstm_25/lstm_cell_25/MatMulMatMul lstm_25/strided_slice_2:output:02lstm_25/lstm_cell_25/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh¢
,lstm_25/lstm_cell_25/MatMul_1/ReadVariableOpReadVariableOp5lstm_25_lstm_cell_25_matmul_1_readvariableop_resource*
_output_shapes

:h*
dtype0§
lstm_25/lstm_cell_25/MatMul_1MatMullstm_25/zeros:output:04lstm_25/lstm_cell_25/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh£
lstm_25/lstm_cell_25/addAddV2%lstm_25/lstm_cell_25/MatMul:product:0'lstm_25/lstm_cell_25/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
+lstm_25/lstm_cell_25/BiasAdd/ReadVariableOpReadVariableOp4lstm_25_lstm_cell_25_biasadd_readvariableop_resource*
_output_shapes
:h*
dtype0¬
lstm_25/lstm_cell_25/BiasAddBiasAddlstm_25/lstm_cell_25/add:z:03lstm_25/lstm_cell_25/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿhf
$lstm_25/lstm_cell_25/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :õ
lstm_25/lstm_cell_25/splitSplit-lstm_25/lstm_cell_25/split/split_dim:output:0%lstm_25/lstm_cell_25/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split~
lstm_25/lstm_cell_25/SigmoidSigmoid#lstm_25/lstm_cell_25/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_25/lstm_cell_25/Sigmoid_1Sigmoid#lstm_25/lstm_cell_25/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_25/lstm_cell_25/mulMul"lstm_25/lstm_cell_25/Sigmoid_1:y:0lstm_25/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
lstm_25/lstm_cell_25/ReluRelu#lstm_25/lstm_cell_25/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_25/lstm_cell_25/mul_1Mul lstm_25/lstm_cell_25/Sigmoid:y:0'lstm_25/lstm_cell_25/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_25/lstm_cell_25/add_1AddV2lstm_25/lstm_cell_25/mul:z:0lstm_25/lstm_cell_25/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_25/lstm_cell_25/Sigmoid_2Sigmoid#lstm_25/lstm_cell_25/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿu
lstm_25/lstm_cell_25/Relu_1Relulstm_25/lstm_cell_25/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¢
lstm_25/lstm_cell_25/mul_2Mul"lstm_25/lstm_cell_25/Sigmoid_2:y:0)lstm_25/lstm_cell_25/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
%lstm_25/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Ð
lstm_25/TensorArrayV2_1TensorListReserve.lstm_25/TensorArrayV2_1/element_shape:output:0 lstm_25/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒN
lstm_25/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_25/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ\
lstm_25/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ô
lstm_25/whileWhile#lstm_25/while/loop_counter:output:0)lstm_25/while/maximum_iterations:output:0lstm_25/time:output:0 lstm_25/TensorArrayV2_1:handle:0lstm_25/zeros:output:0lstm_25/zeros_1:output:0 lstm_25/strided_slice_1:output:0?lstm_25/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_25_lstm_cell_25_matmul_readvariableop_resource5lstm_25_lstm_cell_25_matmul_1_readvariableop_resource4lstm_25_lstm_cell_25_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *&
bodyR
lstm_25_while_body_1042650*&
condR
lstm_25_while_cond_1042649*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 
8lstm_25/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Ú
*lstm_25/TensorArrayV2Stack/TensorListStackTensorListStacklstm_25/while:output:3Alstm_25/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:2ÿÿÿÿÿÿÿÿÿ*
element_dtype0p
lstm_25/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿi
lstm_25/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_25/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¯
lstm_25/strided_slice_3StridedSlice3lstm_25/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_25/strided_slice_3/stack:output:0(lstm_25/strided_slice_3/stack_1:output:0(lstm_25/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maskm
lstm_25/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ®
lstm_25/transpose_1	Transpose3lstm_25/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_25/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2c
lstm_25/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    n
dropout_75/IdentityIdentitylstm_25/transpose_1:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2a
flatten_25/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ  
flatten_25/ReshapeReshapedropout_75/Identity:output:0flatten_25/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

dense_75/MatMul/ReadVariableOpReadVariableOp'dense_75_matmul_readvariableop_resource* 
_output_shapes
:

è*
dtype0
dense_75/MatMulMatMulflatten_25/Reshape:output:0&dense_75/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè
dense_75/BiasAdd/ReadVariableOpReadVariableOp(dense_75_biasadd_readvariableop_resource*
_output_shapes	
:è*
dtype0
dense_75/BiasAddBiasAdddense_75/MatMul:product:0'dense_75/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿèc
dense_75/ReluReludense_75/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿèo
dropout_76/IdentityIdentitydense_75/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè
dense_76/MatMul/ReadVariableOpReadVariableOp'dense_76_matmul_readvariableop_resource* 
_output_shapes
:
èÒ*
dtype0
dense_76/MatMulMatMuldropout_76/Identity:output:0&dense_76/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÒ
dense_76/BiasAdd/ReadVariableOpReadVariableOp(dense_76_biasadd_readvariableop_resource*
_output_shapes	
:Ò*
dtype0
dense_76/BiasAddBiasAdddense_76/MatMul:product:0'dense_76/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÒc
dense_76/ReluReludense_76/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÒo
dropout_77/IdentityIdentitydense_76/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÒ
dense_77/MatMul/ReadVariableOpReadVariableOp'dense_77_matmul_readvariableop_resource*
_output_shapes
:	Ò*
dtype0
dense_77/MatMulMatMuldropout_77/Identity:output:0&dense_77/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_77/BiasAdd/ReadVariableOpReadVariableOp(dense_77_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_77/BiasAddBiasAdddense_77/MatMul:product:0'dense_77/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
dense_77/SoftmaxSoftmaxdense_77/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿi
IdentityIdentitydense_77/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ©
NoOpNoOp ^dense_75/BiasAdd/ReadVariableOp^dense_75/MatMul/ReadVariableOp ^dense_76/BiasAdd/ReadVariableOp^dense_76/MatMul/ReadVariableOp ^dense_77/BiasAdd/ReadVariableOp^dense_77/MatMul/ReadVariableOp,^lstm_25/lstm_cell_25/BiasAdd/ReadVariableOp+^lstm_25/lstm_cell_25/MatMul/ReadVariableOp-^lstm_25/lstm_cell_25/MatMul_1/ReadVariableOp^lstm_25/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):ÿÿÿÿÿÿÿÿÿ2: : : : : : : : : 2B
dense_75/BiasAdd/ReadVariableOpdense_75/BiasAdd/ReadVariableOp2@
dense_75/MatMul/ReadVariableOpdense_75/MatMul/ReadVariableOp2B
dense_76/BiasAdd/ReadVariableOpdense_76/BiasAdd/ReadVariableOp2@
dense_76/MatMul/ReadVariableOpdense_76/MatMul/ReadVariableOp2B
dense_77/BiasAdd/ReadVariableOpdense_77/BiasAdd/ReadVariableOp2@
dense_77/MatMul/ReadVariableOpdense_77/MatMul/ReadVariableOp2Z
+lstm_25/lstm_cell_25/BiasAdd/ReadVariableOp+lstm_25/lstm_cell_25/BiasAdd/ReadVariableOp2X
*lstm_25/lstm_cell_25/MatMul/ReadVariableOp*lstm_25/lstm_cell_25/MatMul/ReadVariableOp2\
,lstm_25/lstm_cell_25/MatMul_1/ReadVariableOp,lstm_25/lstm_cell_25/MatMul_1/ReadVariableOp2
lstm_25/whilelstm_25/while:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
Á
c
G__inference_flatten_25_layer_call_and_return_conditional_losses_1042021

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ2:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs


é
/__inference_sequential_25_layer_call_fn_1042110
lstm_25_input
unknown:h
	unknown_0:h
	unknown_1:h
	unknown_2:

è
	unknown_3:	è
	unknown_4:
èÒ
	unknown_5:	Ò
	unknown_6:	Ò
	unknown_7:
identity¢StatefulPartitionedCallÁ
StatefulPartitionedCallStatefulPartitionedCalllstm_25_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*+
_read_only_resource_inputs
		*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_sequential_25_layer_call_and_return_conditional_losses_1042089o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):ÿÿÿÿÿÿÿÿÿ2: : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
'
_user_specified_namelstm_25_input
ÌA
Ë

lstm_25_while_body_1042650,
(lstm_25_while_lstm_25_while_loop_counter2
.lstm_25_while_lstm_25_while_maximum_iterations
lstm_25_while_placeholder
lstm_25_while_placeholder_1
lstm_25_while_placeholder_2
lstm_25_while_placeholder_3+
'lstm_25_while_lstm_25_strided_slice_1_0g
clstm_25_while_tensorarrayv2read_tensorlistgetitem_lstm_25_tensorarrayunstack_tensorlistfromtensor_0M
;lstm_25_while_lstm_cell_25_matmul_readvariableop_resource_0:hO
=lstm_25_while_lstm_cell_25_matmul_1_readvariableop_resource_0:hJ
<lstm_25_while_lstm_cell_25_biasadd_readvariableop_resource_0:h
lstm_25_while_identity
lstm_25_while_identity_1
lstm_25_while_identity_2
lstm_25_while_identity_3
lstm_25_while_identity_4
lstm_25_while_identity_5)
%lstm_25_while_lstm_25_strided_slice_1e
alstm_25_while_tensorarrayv2read_tensorlistgetitem_lstm_25_tensorarrayunstack_tensorlistfromtensorK
9lstm_25_while_lstm_cell_25_matmul_readvariableop_resource:hM
;lstm_25_while_lstm_cell_25_matmul_1_readvariableop_resource:hH
:lstm_25_while_lstm_cell_25_biasadd_readvariableop_resource:h¢1lstm_25/while/lstm_cell_25/BiasAdd/ReadVariableOp¢0lstm_25/while/lstm_cell_25/MatMul/ReadVariableOp¢2lstm_25/while/lstm_cell_25/MatMul_1/ReadVariableOp
?lstm_25/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Î
1lstm_25/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_25_while_tensorarrayv2read_tensorlistgetitem_lstm_25_tensorarrayunstack_tensorlistfromtensor_0lstm_25_while_placeholderHlstm_25/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0¬
0lstm_25/while/lstm_cell_25/MatMul/ReadVariableOpReadVariableOp;lstm_25_while_lstm_cell_25_matmul_readvariableop_resource_0*
_output_shapes

:h*
dtype0Ñ
!lstm_25/while/lstm_cell_25/MatMulMatMul8lstm_25/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_25/while/lstm_cell_25/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh°
2lstm_25/while/lstm_cell_25/MatMul_1/ReadVariableOpReadVariableOp=lstm_25_while_lstm_cell_25_matmul_1_readvariableop_resource_0*
_output_shapes

:h*
dtype0¸
#lstm_25/while/lstm_cell_25/MatMul_1MatMullstm_25_while_placeholder_2:lstm_25/while/lstm_cell_25/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿhµ
lstm_25/while/lstm_cell_25/addAddV2+lstm_25/while/lstm_cell_25/MatMul:product:0-lstm_25/while/lstm_cell_25/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿhª
1lstm_25/while/lstm_cell_25/BiasAdd/ReadVariableOpReadVariableOp<lstm_25_while_lstm_cell_25_biasadd_readvariableop_resource_0*
_output_shapes
:h*
dtype0¾
"lstm_25/while/lstm_cell_25/BiasAddBiasAdd"lstm_25/while/lstm_cell_25/add:z:09lstm_25/while/lstm_cell_25/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿhl
*lstm_25/while/lstm_cell_25/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
 lstm_25/while/lstm_cell_25/splitSplit3lstm_25/while/lstm_cell_25/split/split_dim:output:0+lstm_25/while/lstm_cell_25/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split
"lstm_25/while/lstm_cell_25/SigmoidSigmoid)lstm_25/while/lstm_cell_25/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$lstm_25/while/lstm_cell_25/Sigmoid_1Sigmoid)lstm_25/while/lstm_cell_25/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_25/while/lstm_cell_25/mulMul(lstm_25/while/lstm_cell_25/Sigmoid_1:y:0lstm_25_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_25/while/lstm_cell_25/ReluRelu)lstm_25/while/lstm_cell_25/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ°
 lstm_25/while/lstm_cell_25/mul_1Mul&lstm_25/while/lstm_cell_25/Sigmoid:y:0-lstm_25/while/lstm_cell_25/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¥
 lstm_25/while/lstm_cell_25/add_1AddV2"lstm_25/while/lstm_cell_25/mul:z:0$lstm_25/while/lstm_cell_25/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$lstm_25/while/lstm_cell_25/Sigmoid_2Sigmoid)lstm_25/while/lstm_cell_25/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!lstm_25/while/lstm_cell_25/Relu_1Relu$lstm_25/while/lstm_cell_25/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´
 lstm_25/while/lstm_cell_25/mul_2Mul(lstm_25/while/lstm_cell_25/Sigmoid_2:y:0/lstm_25/while/lstm_cell_25/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿå
2lstm_25/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_25_while_placeholder_1lstm_25_while_placeholder$lstm_25/while/lstm_cell_25/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒU
lstm_25/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_25/while/addAddV2lstm_25_while_placeholderlstm_25/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_25/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_25/while/add_1AddV2(lstm_25_while_lstm_25_while_loop_counterlstm_25/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_25/while/IdentityIdentitylstm_25/while/add_1:z:0^lstm_25/while/NoOp*
T0*
_output_shapes
: 
lstm_25/while/Identity_1Identity.lstm_25_while_lstm_25_while_maximum_iterations^lstm_25/while/NoOp*
T0*
_output_shapes
: q
lstm_25/while/Identity_2Identitylstm_25/while/add:z:0^lstm_25/while/NoOp*
T0*
_output_shapes
: ±
lstm_25/while/Identity_3IdentityBlstm_25/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_25/while/NoOp*
T0*
_output_shapes
: :éèÒ
lstm_25/while/Identity_4Identity$lstm_25/while/lstm_cell_25/mul_2:z:0^lstm_25/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_25/while/Identity_5Identity$lstm_25/while/lstm_cell_25/add_1:z:0^lstm_25/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿð
lstm_25/while/NoOpNoOp2^lstm_25/while/lstm_cell_25/BiasAdd/ReadVariableOp1^lstm_25/while/lstm_cell_25/MatMul/ReadVariableOp3^lstm_25/while/lstm_cell_25/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_25_while_identitylstm_25/while/Identity:output:0"=
lstm_25_while_identity_1!lstm_25/while/Identity_1:output:0"=
lstm_25_while_identity_2!lstm_25/while/Identity_2:output:0"=
lstm_25_while_identity_3!lstm_25/while/Identity_3:output:0"=
lstm_25_while_identity_4!lstm_25/while/Identity_4:output:0"=
lstm_25_while_identity_5!lstm_25/while/Identity_5:output:0"P
%lstm_25_while_lstm_25_strided_slice_1'lstm_25_while_lstm_25_strided_slice_1_0"z
:lstm_25_while_lstm_cell_25_biasadd_readvariableop_resource<lstm_25_while_lstm_cell_25_biasadd_readvariableop_resource_0"|
;lstm_25_while_lstm_cell_25_matmul_1_readvariableop_resource=lstm_25_while_lstm_cell_25_matmul_1_readvariableop_resource_0"x
9lstm_25_while_lstm_cell_25_matmul_readvariableop_resource;lstm_25_while_lstm_cell_25_matmul_readvariableop_resource_0"È
alstm_25_while_tensorarrayv2read_tensorlistgetitem_lstm_25_tensorarrayunstack_tensorlistfromtensorclstm_25_while_tensorarrayv2read_tensorlistgetitem_lstm_25_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2f
1lstm_25/while/lstm_cell_25/BiasAdd/ReadVariableOp1lstm_25/while/lstm_cell_25/BiasAdd/ReadVariableOp2d
0lstm_25/while/lstm_cell_25/MatMul/ReadVariableOp0lstm_25/while/lstm_cell_25/MatMul/ReadVariableOp2h
2lstm_25/while/lstm_cell_25/MatMul_1/ReadVariableOp2lstm_25/while/lstm_cell_25/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
Ê

J__inference_sequential_25_layer_call_and_return_conditional_losses_1042950

inputsE
3lstm_25_lstm_cell_25_matmul_readvariableop_resource:hG
5lstm_25_lstm_cell_25_matmul_1_readvariableop_resource:hB
4lstm_25_lstm_cell_25_biasadd_readvariableop_resource:h;
'dense_75_matmul_readvariableop_resource:

è7
(dense_75_biasadd_readvariableop_resource:	è;
'dense_76_matmul_readvariableop_resource:
èÒ7
(dense_76_biasadd_readvariableop_resource:	Ò:
'dense_77_matmul_readvariableop_resource:	Ò6
(dense_77_biasadd_readvariableop_resource:
identity¢dense_75/BiasAdd/ReadVariableOp¢dense_75/MatMul/ReadVariableOp¢dense_76/BiasAdd/ReadVariableOp¢dense_76/MatMul/ReadVariableOp¢dense_77/BiasAdd/ReadVariableOp¢dense_77/MatMul/ReadVariableOp¢+lstm_25/lstm_cell_25/BiasAdd/ReadVariableOp¢*lstm_25/lstm_cell_25/MatMul/ReadVariableOp¢,lstm_25/lstm_cell_25/MatMul_1/ReadVariableOp¢lstm_25/whileC
lstm_25/ShapeShapeinputs*
T0*
_output_shapes
:e
lstm_25/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_25/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_25/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ù
lstm_25/strided_sliceStridedSlicelstm_25/Shape:output:0$lstm_25/strided_slice/stack:output:0&lstm_25/strided_slice/stack_1:output:0&lstm_25/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_25/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
lstm_25/zeros/packedPacklstm_25/strided_slice:output:0lstm_25/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_25/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_25/zerosFilllstm_25/zeros/packed:output:0lstm_25/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ
lstm_25/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
lstm_25/zeros_1/packedPacklstm_25/strided_slice:output:0!lstm_25/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_25/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_25/zeros_1Filllstm_25/zeros_1/packed:output:0lstm_25/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
lstm_25/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          }
lstm_25/transpose	Transposeinputslstm_25/transpose/perm:output:0*
T0*+
_output_shapes
:2ÿÿÿÿÿÿÿÿÿT
lstm_25/Shape_1Shapelstm_25/transpose:y:0*
T0*
_output_shapes
:g
lstm_25/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_25/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_25/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_25/strided_slice_1StridedSlicelstm_25/Shape_1:output:0&lstm_25/strided_slice_1/stack:output:0(lstm_25/strided_slice_1/stack_1:output:0(lstm_25/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_25/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÌ
lstm_25/TensorArrayV2TensorListReserve,lstm_25/TensorArrayV2/element_shape:output:0 lstm_25/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
=lstm_25/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ø
/lstm_25/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_25/transpose:y:0Flstm_25/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒg
lstm_25/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_25/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_25/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_25/strided_slice_2StridedSlicelstm_25/transpose:y:0&lstm_25/strided_slice_2/stack:output:0(lstm_25/strided_slice_2/stack_1:output:0(lstm_25/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
*lstm_25/lstm_cell_25/MatMul/ReadVariableOpReadVariableOp3lstm_25_lstm_cell_25_matmul_readvariableop_resource*
_output_shapes

:h*
dtype0­
lstm_25/lstm_cell_25/MatMulMatMul lstm_25/strided_slice_2:output:02lstm_25/lstm_cell_25/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh¢
,lstm_25/lstm_cell_25/MatMul_1/ReadVariableOpReadVariableOp5lstm_25_lstm_cell_25_matmul_1_readvariableop_resource*
_output_shapes

:h*
dtype0§
lstm_25/lstm_cell_25/MatMul_1MatMullstm_25/zeros:output:04lstm_25/lstm_cell_25/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh£
lstm_25/lstm_cell_25/addAddV2%lstm_25/lstm_cell_25/MatMul:product:0'lstm_25/lstm_cell_25/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
+lstm_25/lstm_cell_25/BiasAdd/ReadVariableOpReadVariableOp4lstm_25_lstm_cell_25_biasadd_readvariableop_resource*
_output_shapes
:h*
dtype0¬
lstm_25/lstm_cell_25/BiasAddBiasAddlstm_25/lstm_cell_25/add:z:03lstm_25/lstm_cell_25/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿhf
$lstm_25/lstm_cell_25/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :õ
lstm_25/lstm_cell_25/splitSplit-lstm_25/lstm_cell_25/split/split_dim:output:0%lstm_25/lstm_cell_25/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split~
lstm_25/lstm_cell_25/SigmoidSigmoid#lstm_25/lstm_cell_25/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_25/lstm_cell_25/Sigmoid_1Sigmoid#lstm_25/lstm_cell_25/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_25/lstm_cell_25/mulMul"lstm_25/lstm_cell_25/Sigmoid_1:y:0lstm_25/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
lstm_25/lstm_cell_25/ReluRelu#lstm_25/lstm_cell_25/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_25/lstm_cell_25/mul_1Mul lstm_25/lstm_cell_25/Sigmoid:y:0'lstm_25/lstm_cell_25/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_25/lstm_cell_25/add_1AddV2lstm_25/lstm_cell_25/mul:z:0lstm_25/lstm_cell_25/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_25/lstm_cell_25/Sigmoid_2Sigmoid#lstm_25/lstm_cell_25/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿu
lstm_25/lstm_cell_25/Relu_1Relulstm_25/lstm_cell_25/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¢
lstm_25/lstm_cell_25/mul_2Mul"lstm_25/lstm_cell_25/Sigmoid_2:y:0)lstm_25/lstm_cell_25/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
%lstm_25/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Ð
lstm_25/TensorArrayV2_1TensorListReserve.lstm_25/TensorArrayV2_1/element_shape:output:0 lstm_25/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒN
lstm_25/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_25/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ\
lstm_25/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ô
lstm_25/whileWhile#lstm_25/while/loop_counter:output:0)lstm_25/while/maximum_iterations:output:0lstm_25/time:output:0 lstm_25/TensorArrayV2_1:handle:0lstm_25/zeros:output:0lstm_25/zeros_1:output:0 lstm_25/strided_slice_1:output:0?lstm_25/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_25_lstm_cell_25_matmul_readvariableop_resource5lstm_25_lstm_cell_25_matmul_1_readvariableop_resource4lstm_25_lstm_cell_25_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *&
bodyR
lstm_25_while_body_1042819*&
condR
lstm_25_while_cond_1042818*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 
8lstm_25/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Ú
*lstm_25/TensorArrayV2Stack/TensorListStackTensorListStacklstm_25/while:output:3Alstm_25/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:2ÿÿÿÿÿÿÿÿÿ*
element_dtype0p
lstm_25/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿi
lstm_25/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_25/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¯
lstm_25/strided_slice_3StridedSlice3lstm_25/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_25/strided_slice_3/stack:output:0(lstm_25/strided_slice_3/stack_1:output:0(lstm_25/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maskm
lstm_25/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ®
lstm_25/transpose_1	Transpose3lstm_25/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_25/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2c
lstm_25/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ]
dropout_75/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?
dropout_75/dropout/MulMullstm_25/transpose_1:y:0!dropout_75/dropout/Const:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2_
dropout_75/dropout/ShapeShapelstm_25/transpose_1:y:0*
T0*
_output_shapes
:¦
/dropout_75/dropout/random_uniform/RandomUniformRandomUniform!dropout_75/dropout/Shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype0f
!dropout_75/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=Ë
dropout_75/dropout/GreaterEqualGreaterEqual8dropout_75/dropout/random_uniform/RandomUniform:output:0*dropout_75/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout_75/dropout/CastCast#dropout_75/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout_75/dropout/Mul_1Muldropout_75/dropout/Mul:z:0dropout_75/dropout/Cast:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2a
flatten_25/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ  
flatten_25/ReshapeReshapedropout_75/dropout/Mul_1:z:0flatten_25/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

dense_75/MatMul/ReadVariableOpReadVariableOp'dense_75_matmul_readvariableop_resource* 
_output_shapes
:

è*
dtype0
dense_75/MatMulMatMulflatten_25/Reshape:output:0&dense_75/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè
dense_75/BiasAdd/ReadVariableOpReadVariableOp(dense_75_biasadd_readvariableop_resource*
_output_shapes	
:è*
dtype0
dense_75/BiasAddBiasAdddense_75/MatMul:product:0'dense_75/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿèc
dense_75/ReluReludense_75/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè]
dropout_76/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
dropout_76/dropout/MulMuldense_75/Relu:activations:0!dropout_76/dropout/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿèc
dropout_76/dropout/ShapeShapedense_75/Relu:activations:0*
T0*
_output_shapes
:£
/dropout_76/dropout/random_uniform/RandomUniformRandomUniform!dropout_76/dropout/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè*
dtype0f
!dropout_76/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>È
dropout_76/dropout/GreaterEqualGreaterEqual8dropout_76/dropout/random_uniform/RandomUniform:output:0*dropout_76/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè
dropout_76/dropout/CastCast#dropout_76/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè
dropout_76/dropout/Mul_1Muldropout_76/dropout/Mul:z:0dropout_76/dropout/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè
dense_76/MatMul/ReadVariableOpReadVariableOp'dense_76_matmul_readvariableop_resource* 
_output_shapes
:
èÒ*
dtype0
dense_76/MatMulMatMuldropout_76/dropout/Mul_1:z:0&dense_76/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÒ
dense_76/BiasAdd/ReadVariableOpReadVariableOp(dense_76_biasadd_readvariableop_resource*
_output_shapes	
:Ò*
dtype0
dense_76/BiasAddBiasAdddense_76/MatMul:product:0'dense_76/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÒc
dense_76/ReluReludense_76/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÒ]
dropout_77/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?
dropout_77/dropout/MulMuldense_76/Relu:activations:0!dropout_77/dropout/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÒc
dropout_77/dropout/ShapeShapedense_76/Relu:activations:0*
T0*
_output_shapes
:£
/dropout_77/dropout/random_uniform/RandomUniformRandomUniform!dropout_77/dropout/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÒ*
dtype0f
!dropout_77/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>È
dropout_77/dropout/GreaterEqualGreaterEqual8dropout_77/dropout/random_uniform/RandomUniform:output:0*dropout_77/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÒ
dropout_77/dropout/CastCast#dropout_77/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÒ
dropout_77/dropout/Mul_1Muldropout_77/dropout/Mul:z:0dropout_77/dropout/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÒ
dense_77/MatMul/ReadVariableOpReadVariableOp'dense_77_matmul_readvariableop_resource*
_output_shapes
:	Ò*
dtype0
dense_77/MatMulMatMuldropout_77/dropout/Mul_1:z:0&dense_77/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_77/BiasAdd/ReadVariableOpReadVariableOp(dense_77_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_77/BiasAddBiasAdddense_77/MatMul:product:0'dense_77/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
dense_77/SoftmaxSoftmaxdense_77/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿi
IdentityIdentitydense_77/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ©
NoOpNoOp ^dense_75/BiasAdd/ReadVariableOp^dense_75/MatMul/ReadVariableOp ^dense_76/BiasAdd/ReadVariableOp^dense_76/MatMul/ReadVariableOp ^dense_77/BiasAdd/ReadVariableOp^dense_77/MatMul/ReadVariableOp,^lstm_25/lstm_cell_25/BiasAdd/ReadVariableOp+^lstm_25/lstm_cell_25/MatMul/ReadVariableOp-^lstm_25/lstm_cell_25/MatMul_1/ReadVariableOp^lstm_25/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):ÿÿÿÿÿÿÿÿÿ2: : : : : : : : : 2B
dense_75/BiasAdd/ReadVariableOpdense_75/BiasAdd/ReadVariableOp2@
dense_75/MatMul/ReadVariableOpdense_75/MatMul/ReadVariableOp2B
dense_76/BiasAdd/ReadVariableOpdense_76/BiasAdd/ReadVariableOp2@
dense_76/MatMul/ReadVariableOpdense_76/MatMul/ReadVariableOp2B
dense_77/BiasAdd/ReadVariableOpdense_77/BiasAdd/ReadVariableOp2@
dense_77/MatMul/ReadVariableOpdense_77/MatMul/ReadVariableOp2Z
+lstm_25/lstm_cell_25/BiasAdd/ReadVariableOp+lstm_25/lstm_cell_25/BiasAdd/ReadVariableOp2X
*lstm_25/lstm_cell_25/MatMul/ReadVariableOp*lstm_25/lstm_cell_25/MatMul/ReadVariableOp2\
,lstm_25/lstm_cell_25/MatMul_1/ReadVariableOp,lstm_25/lstm_cell_25/MatMul_1/ReadVariableOp2
lstm_25/whilelstm_25/while:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
ý	
f
G__inference_dropout_77_layer_call_and_return_conditional_losses_1042140

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÒC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÒ*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>§
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÒp
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÒj
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÒZ
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÒ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿÒ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÒ
 
_user_specified_nameinputs
ù
e
,__inference_dropout_76_layer_call_fn_1043659

inputs
identity¢StatefulPartitionedCallÃ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dropout_76_layer_call_and_return_conditional_losses_1042173p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿè22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè
 
_user_specified_nameinputs
ÚJ

D__inference_lstm_25_layer_call_and_return_conditional_losses_1043305
inputs_0=
+lstm_cell_25_matmul_readvariableop_resource:h?
-lstm_cell_25_matmul_1_readvariableop_resource:h:
,lstm_cell_25_biasadd_readvariableop_resource:h
identity¢#lstm_cell_25/BiasAdd/ReadVariableOp¢"lstm_cell_25/MatMul/ReadVariableOp¢$lstm_cell_25/MatMul_1/ReadVariableOp¢while=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
"lstm_cell_25/MatMul/ReadVariableOpReadVariableOp+lstm_cell_25_matmul_readvariableop_resource*
_output_shapes

:h*
dtype0
lstm_cell_25/MatMulMatMulstrided_slice_2:output:0*lstm_cell_25/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
$lstm_cell_25/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_25_matmul_1_readvariableop_resource*
_output_shapes

:h*
dtype0
lstm_cell_25/MatMul_1MatMulzeros:output:0,lstm_cell_25/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
lstm_cell_25/addAddV2lstm_cell_25/MatMul:product:0lstm_cell_25/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
#lstm_cell_25/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_25_biasadd_readvariableop_resource*
_output_shapes
:h*
dtype0
lstm_cell_25/BiasAddBiasAddlstm_cell_25/add:z:0+lstm_cell_25/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh^
lstm_cell_25/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ý
lstm_cell_25/splitSplit%lstm_cell_25/split/split_dim:output:0lstm_cell_25/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_splitn
lstm_cell_25/SigmoidSigmoidlstm_cell_25/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
lstm_cell_25/Sigmoid_1Sigmoidlstm_cell_25/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
lstm_cell_25/mulMullstm_cell_25/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
lstm_cell_25/ReluRelulstm_cell_25/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_25/mul_1Mullstm_cell_25/Sigmoid:y:0lstm_cell_25/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ{
lstm_cell_25/add_1AddV2lstm_cell_25/mul:z:0lstm_cell_25/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
lstm_cell_25/Sigmoid_2Sigmoidlstm_cell_25/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
lstm_cell_25/Relu_1Relulstm_cell_25/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_25/mul_2Mullstm_cell_25/Sigmoid_2:y:0!lstm_cell_25/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_25_matmul_readvariableop_resource-lstm_cell_25_matmul_1_readvariableop_resource,lstm_cell_25_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1043221*
condR
while_cond_1043220*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÀ
NoOpNoOp$^lstm_cell_25/BiasAdd/ReadVariableOp#^lstm_cell_25/MatMul/ReadVariableOp%^lstm_cell_25/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2J
#lstm_cell_25/BiasAdd/ReadVariableOp#lstm_cell_25/BiasAdd/ReadVariableOp2H
"lstm_cell_25/MatMul/ReadVariableOp"lstm_cell_25/MatMul/ReadVariableOp2L
$lstm_cell_25/MatMul_1/ReadVariableOp$lstm_cell_25/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
ê
e
G__inference_dropout_75_layer_call_and_return_conditional_losses_1042013

inputs

identity_1R
IdentityIdentityinputs*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2_

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ2:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
Ç

*__inference_dense_77_layer_call_fn_1043732

inputs
unknown:	Ò
	unknown_0:
identity¢StatefulPartitionedCallÚ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_77_layer_call_and_return_conditional_losses_1042082o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿÒ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÒ
 
_user_specified_nameinputs
­
H
,__inference_flatten_25_layer_call_fn_1043623

inputs
identity³
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_flatten_25_layer_call_and_return_conditional_losses_1042021a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ2:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
³
H
,__inference_dropout_75_layer_call_fn_1043596

inputs
identity¶
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dropout_75_layer_call_and_return_conditional_losses_1042013d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ2:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
J

D__inference_lstm_25_layer_call_and_return_conditional_losses_1043448

inputs=
+lstm_cell_25_matmul_readvariableop_resource:h?
-lstm_cell_25_matmul_1_readvariableop_resource:h:
,lstm_cell_25_biasadd_readvariableop_resource:h
identity¢#lstm_cell_25/BiasAdd/ReadVariableOp¢"lstm_cell_25/MatMul/ReadVariableOp¢$lstm_cell_25/MatMul_1/ReadVariableOp¢while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:2ÿÿÿÿÿÿÿÿÿD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
"lstm_cell_25/MatMul/ReadVariableOpReadVariableOp+lstm_cell_25_matmul_readvariableop_resource*
_output_shapes

:h*
dtype0
lstm_cell_25/MatMulMatMulstrided_slice_2:output:0*lstm_cell_25/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
$lstm_cell_25/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_25_matmul_1_readvariableop_resource*
_output_shapes

:h*
dtype0
lstm_cell_25/MatMul_1MatMulzeros:output:0,lstm_cell_25/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
lstm_cell_25/addAddV2lstm_cell_25/MatMul:product:0lstm_cell_25/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
#lstm_cell_25/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_25_biasadd_readvariableop_resource*
_output_shapes
:h*
dtype0
lstm_cell_25/BiasAddBiasAddlstm_cell_25/add:z:0+lstm_cell_25/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh^
lstm_cell_25/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ý
lstm_cell_25/splitSplit%lstm_cell_25/split/split_dim:output:0lstm_cell_25/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_splitn
lstm_cell_25/SigmoidSigmoidlstm_cell_25/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
lstm_cell_25/Sigmoid_1Sigmoidlstm_cell_25/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
lstm_cell_25/mulMullstm_cell_25/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
lstm_cell_25/ReluRelulstm_cell_25/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_25/mul_1Mullstm_cell_25/Sigmoid:y:0lstm_cell_25/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ{
lstm_cell_25/add_1AddV2lstm_cell_25/mul:z:0lstm_cell_25/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
lstm_cell_25/Sigmoid_2Sigmoidlstm_cell_25/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
lstm_cell_25/Relu_1Relulstm_cell_25/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_25/mul_2Mullstm_cell_25/Sigmoid_2:y:0!lstm_cell_25/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_25_matmul_readvariableop_resource-lstm_cell_25_matmul_1_readvariableop_resource,lstm_cell_25_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1043364*
condR
while_cond_1043363*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Â
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:2ÿÿÿÿÿÿÿÿÿ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2À
NoOpNoOp$^lstm_cell_25/BiasAdd/ReadVariableOp#^lstm_cell_25/MatMul/ReadVariableOp%^lstm_cell_25/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ2: : : 2J
#lstm_cell_25/BiasAdd/ReadVariableOp#lstm_cell_25/BiasAdd/ReadVariableOp2H
"lstm_cell_25/MatMul/ReadVariableOp"lstm_cell_25/MatMul/ReadVariableOp2L
$lstm_cell_25/MatMul_1/ReadVariableOp$lstm_cell_25/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
è	
ß
%__inference_signature_wrapper_1042975
lstm_25_input
unknown:h
	unknown_0:h
	unknown_1:h
	unknown_2:

è
	unknown_3:	è
	unknown_4:
èÒ
	unknown_5:	Ò
	unknown_6:	Ò
	unknown_7:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCalllstm_25_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*+
_read_only_resource_inputs
		*-
config_proto

CPU

GPU 2J 8 *+
f&R$
"__inference__wrapped_model_1041501o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):ÿÿÿÿÿÿÿÿÿ2: : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
'
_user_specified_namelstm_25_input

e
,__inference_dropout_75_layer_call_fn_1043601

inputs
identity¢StatefulPartitionedCallÆ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dropout_75_layer_call_and_return_conditional_losses_1042212s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ222
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
¨

ù
E__inference_dense_76_layer_call_and_return_conditional_losses_1043696

inputs2
matmul_readvariableop_resource:
èÒ.
biasadd_readvariableop_resource:	Ò
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
èÒ*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÒs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:Ò*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÒQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÒb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÒw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿè: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè
 
_user_specified_nameinputs
ý	
f
G__inference_dropout_77_layer_call_and_return_conditional_losses_1043723

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÒC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÒ*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>§
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÒp
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÒj
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÒZ
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÒ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿÒ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÒ
 
_user_specified_nameinputs
Ë

*__inference_dense_75_layer_call_fn_1043638

inputs
unknown:

è
	unknown_0:	è
identity¢StatefulPartitionedCallÛ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_75_layer_call_and_return_conditional_losses_1042034p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ
: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
_user_specified_nameinputs
8
Ë
while_body_1043078
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_25_matmul_readvariableop_resource_0:hG
5while_lstm_cell_25_matmul_1_readvariableop_resource_0:hB
4while_lstm_cell_25_biasadd_readvariableop_resource_0:h
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_25_matmul_readvariableop_resource:hE
3while_lstm_cell_25_matmul_1_readvariableop_resource:h@
2while_lstm_cell_25_biasadd_readvariableop_resource:h¢)while/lstm_cell_25/BiasAdd/ReadVariableOp¢(while/lstm_cell_25/MatMul/ReadVariableOp¢*while/lstm_cell_25/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
(while/lstm_cell_25/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_25_matmul_readvariableop_resource_0*
_output_shapes

:h*
dtype0¹
while/lstm_cell_25/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_25/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh 
*while/lstm_cell_25/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_25_matmul_1_readvariableop_resource_0*
_output_shapes

:h*
dtype0 
while/lstm_cell_25/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_25/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
while/lstm_cell_25/addAddV2#while/lstm_cell_25/MatMul:product:0%while/lstm_cell_25/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
)while/lstm_cell_25/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_25_biasadd_readvariableop_resource_0*
_output_shapes
:h*
dtype0¦
while/lstm_cell_25/BiasAddBiasAddwhile/lstm_cell_25/add:z:01while/lstm_cell_25/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿhd
"while/lstm_cell_25/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_25/splitSplit+while/lstm_cell_25/split/split_dim:output:0#while/lstm_cell_25/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_splitz
while/lstm_cell_25/SigmoidSigmoid!while/lstm_cell_25/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|
while/lstm_cell_25/Sigmoid_1Sigmoid!while/lstm_cell_25/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_25/mulMul while/lstm_cell_25/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿt
while/lstm_cell_25/ReluRelu!while/lstm_cell_25/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_25/mul_1Mulwhile/lstm_cell_25/Sigmoid:y:0%while/lstm_cell_25/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_25/add_1AddV2while/lstm_cell_25/mul:z:0while/lstm_cell_25/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|
while/lstm_cell_25/Sigmoid_2Sigmoid!while/lstm_cell_25/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿq
while/lstm_cell_25/Relu_1Reluwhile/lstm_cell_25/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_25/mul_2Mul while/lstm_cell_25/Sigmoid_2:y:0'while/lstm_cell_25/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÅ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_25/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éèÒy
while/Identity_4Identitywhile/lstm_cell_25/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿy
while/Identity_5Identitywhile/lstm_cell_25/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÐ

while/NoOpNoOp*^while/lstm_cell_25/BiasAdd/ReadVariableOp)^while/lstm_cell_25/MatMul/ReadVariableOp+^while/lstm_cell_25/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_25_biasadd_readvariableop_resource4while_lstm_cell_25_biasadd_readvariableop_resource_0"l
3while_lstm_cell_25_matmul_1_readvariableop_resource5while_lstm_cell_25_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_25_matmul_readvariableop_resource3while_lstm_cell_25_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2V
)while/lstm_cell_25/BiasAdd/ReadVariableOp)while/lstm_cell_25/BiasAdd/ReadVariableOp2T
(while/lstm_cell_25/MatMul/ReadVariableOp(while/lstm_cell_25/MatMul/ReadVariableOp2X
*while/lstm_cell_25/MatMul_1/ReadVariableOp*while/lstm_cell_25/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
Ô

I__inference_lstm_cell_25_layer_call_and_return_conditional_losses_1043841

inputs
states_0
states_10
matmul_readvariableop_resource:h2
 matmul_1_readvariableop_resource:h-
biasadd_readvariableop_resource:h
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:h*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿhx
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:h*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿhd
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿhr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:h*
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿhQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¶
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿN
ReluRelusplit:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/1
Ì

I__inference_lstm_cell_25_layer_call_and_return_conditional_losses_1041568

inputs

states
states_10
matmul_readvariableop_resource:h2
 matmul_1_readvariableop_resource:h-
biasadd_readvariableop_resource:h
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:h*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿhx
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:h*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿhd
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿhr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:h*
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿhQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¶
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿN
ReluRelusplit:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_namestates:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_namestates


è
lstm_25_while_cond_1042649,
(lstm_25_while_lstm_25_while_loop_counter2
.lstm_25_while_lstm_25_while_maximum_iterations
lstm_25_while_placeholder
lstm_25_while_placeholder_1
lstm_25_while_placeholder_2
lstm_25_while_placeholder_3.
*lstm_25_while_less_lstm_25_strided_slice_1E
Alstm_25_while_lstm_25_while_cond_1042649___redundant_placeholder0E
Alstm_25_while_lstm_25_while_cond_1042649___redundant_placeholder1E
Alstm_25_while_lstm_25_while_cond_1042649___redundant_placeholder2E
Alstm_25_while_lstm_25_while_cond_1042649___redundant_placeholder3
lstm_25_while_identity

lstm_25/while/LessLesslstm_25_while_placeholder*lstm_25_while_less_lstm_25_strided_slice_1*
T0*
_output_shapes
: [
lstm_25/while/IdentityIdentitylstm_25/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_25_while_identitylstm_25/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
Ë

*__inference_dense_76_layer_call_fn_1043685

inputs
unknown:
èÒ
	unknown_0:	Ò
identity¢StatefulPartitionedCallÛ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÒ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_76_layer_call_and_return_conditional_losses_1042058p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÒ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿè: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè
 
_user_specified_nameinputs
'

J__inference_sequential_25_layer_call_and_return_conditional_losses_1042435

inputs!
lstm_25_1042408:h!
lstm_25_1042410:h
lstm_25_1042412:h$
dense_75_1042417:

è
dense_75_1042419:	è$
dense_76_1042423:
èÒ
dense_76_1042425:	Ò#
dense_77_1042429:	Ò
dense_77_1042431:
identity¢ dense_75/StatefulPartitionedCall¢ dense_76/StatefulPartitionedCall¢ dense_77/StatefulPartitionedCall¢"dropout_75/StatefulPartitionedCall¢"dropout_76/StatefulPartitionedCall¢"dropout_77/StatefulPartitionedCall¢lstm_25/StatefulPartitionedCall
lstm_25/StatefulPartitionedCallStatefulPartitionedCallinputslstm_25_1042408lstm_25_1042410lstm_25_1042412*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_25_layer_call_and_return_conditional_losses_1042371ó
"dropout_75/StatefulPartitionedCallStatefulPartitionedCall(lstm_25/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dropout_75_layer_call_and_return_conditional_losses_1042212ã
flatten_25/PartitionedCallPartitionedCall+dropout_75/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_flatten_25_layer_call_and_return_conditional_losses_1042021
 dense_75/StatefulPartitionedCallStatefulPartitionedCall#flatten_25/PartitionedCall:output:0dense_75_1042417dense_75_1042419*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_75_layer_call_and_return_conditional_losses_1042034
"dropout_76/StatefulPartitionedCallStatefulPartitionedCall)dense_75/StatefulPartitionedCall:output:0#^dropout_75/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dropout_76_layer_call_and_return_conditional_losses_1042173
 dense_76/StatefulPartitionedCallStatefulPartitionedCall+dropout_76/StatefulPartitionedCall:output:0dense_76_1042423dense_76_1042425*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÒ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_76_layer_call_and_return_conditional_losses_1042058
"dropout_77/StatefulPartitionedCallStatefulPartitionedCall)dense_76/StatefulPartitionedCall:output:0#^dropout_76/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÒ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dropout_77_layer_call_and_return_conditional_losses_1042140
 dense_77/StatefulPartitionedCallStatefulPartitionedCall+dropout_77/StatefulPartitionedCall:output:0dense_77_1042429dense_77_1042431*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_77_layer_call_and_return_conditional_losses_1042082x
IdentityIdentity)dense_77/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
NoOpNoOp!^dense_75/StatefulPartitionedCall!^dense_76/StatefulPartitionedCall!^dense_77/StatefulPartitionedCall#^dropout_75/StatefulPartitionedCall#^dropout_76/StatefulPartitionedCall#^dropout_77/StatefulPartitionedCall ^lstm_25/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):ÿÿÿÿÿÿÿÿÿ2: : : : : : : : : 2D
 dense_75/StatefulPartitionedCall dense_75/StatefulPartitionedCall2D
 dense_76/StatefulPartitionedCall dense_76/StatefulPartitionedCall2D
 dense_77/StatefulPartitionedCall dense_77/StatefulPartitionedCall2H
"dropout_75/StatefulPartitionedCall"dropout_75/StatefulPartitionedCall2H
"dropout_76/StatefulPartitionedCall"dropout_76/StatefulPartitionedCall2H
"dropout_77/StatefulPartitionedCall"dropout_77/StatefulPartitionedCall2B
lstm_25/StatefulPartitionedCalllstm_25/StatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
8
Ë
while_body_1043221
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_25_matmul_readvariableop_resource_0:hG
5while_lstm_cell_25_matmul_1_readvariableop_resource_0:hB
4while_lstm_cell_25_biasadd_readvariableop_resource_0:h
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_25_matmul_readvariableop_resource:hE
3while_lstm_cell_25_matmul_1_readvariableop_resource:h@
2while_lstm_cell_25_biasadd_readvariableop_resource:h¢)while/lstm_cell_25/BiasAdd/ReadVariableOp¢(while/lstm_cell_25/MatMul/ReadVariableOp¢*while/lstm_cell_25/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
(while/lstm_cell_25/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_25_matmul_readvariableop_resource_0*
_output_shapes

:h*
dtype0¹
while/lstm_cell_25/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_25/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh 
*while/lstm_cell_25/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_25_matmul_1_readvariableop_resource_0*
_output_shapes

:h*
dtype0 
while/lstm_cell_25/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_25/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
while/lstm_cell_25/addAddV2#while/lstm_cell_25/MatMul:product:0%while/lstm_cell_25/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
)while/lstm_cell_25/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_25_biasadd_readvariableop_resource_0*
_output_shapes
:h*
dtype0¦
while/lstm_cell_25/BiasAddBiasAddwhile/lstm_cell_25/add:z:01while/lstm_cell_25/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿhd
"while/lstm_cell_25/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_25/splitSplit+while/lstm_cell_25/split/split_dim:output:0#while/lstm_cell_25/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_splitz
while/lstm_cell_25/SigmoidSigmoid!while/lstm_cell_25/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|
while/lstm_cell_25/Sigmoid_1Sigmoid!while/lstm_cell_25/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_25/mulMul while/lstm_cell_25/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿt
while/lstm_cell_25/ReluRelu!while/lstm_cell_25/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_25/mul_1Mulwhile/lstm_cell_25/Sigmoid:y:0%while/lstm_cell_25/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_25/add_1AddV2while/lstm_cell_25/mul:z:0while/lstm_cell_25/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|
while/lstm_cell_25/Sigmoid_2Sigmoid!while/lstm_cell_25/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿq
while/lstm_cell_25/Relu_1Reluwhile/lstm_cell_25/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_25/mul_2Mul while/lstm_cell_25/Sigmoid_2:y:0'while/lstm_cell_25/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÅ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_25/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éèÒy
while/Identity_4Identitywhile/lstm_cell_25/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿy
while/Identity_5Identitywhile/lstm_cell_25/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÐ

while/NoOpNoOp*^while/lstm_cell_25/BiasAdd/ReadVariableOp)^while/lstm_cell_25/MatMul/ReadVariableOp+^while/lstm_cell_25/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_25_biasadd_readvariableop_resource4while_lstm_cell_25_biasadd_readvariableop_resource_0"l
3while_lstm_cell_25_matmul_1_readvariableop_resource5while_lstm_cell_25_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_25_matmul_readvariableop_resource3while_lstm_cell_25_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2V
)while/lstm_cell_25/BiasAdd/ReadVariableOp)while/lstm_cell_25/BiasAdd/ReadVariableOp2T
(while/lstm_cell_25/MatMul/ReadVariableOp(while/lstm_cell_25/MatMul/ReadVariableOp2X
*while/lstm_cell_25/MatMul_1/ReadVariableOp*while/lstm_cell_25/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
ê
ô
.__inference_lstm_cell_25_layer_call_fn_1043760

inputs
states_0
states_1
unknown:h
	unknown_0:h
	unknown_1:h
identity

identity_1

identity_2¢StatefulPartitionedCall©
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_lstm_cell_25_layer_call_and_return_conditional_losses_1041568o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿq

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/1
Ô

I__inference_lstm_cell_25_layer_call_and_return_conditional_losses_1043809

inputs
states_0
states_10
matmul_readvariableop_resource:h2
 matmul_1_readvariableop_resource:h-
biasadd_readvariableop_resource:h
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:h*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿhx
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:h*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿhd
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿhr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:h*
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿhQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¶
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿN
ReluRelusplit:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/1


f
G__inference_dropout_75_layer_call_and_return_conditional_losses_1042212

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?h
dropout/MulMulinputsdropout/Const:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=ª
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2s
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2m
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2]
IdentityIdentitydropout/Mul_1:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ2:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
í
é	
"__inference__wrapped_model_1041501
lstm_25_inputS
Asequential_25_lstm_25_lstm_cell_25_matmul_readvariableop_resource:hU
Csequential_25_lstm_25_lstm_cell_25_matmul_1_readvariableop_resource:hP
Bsequential_25_lstm_25_lstm_cell_25_biasadd_readvariableop_resource:hI
5sequential_25_dense_75_matmul_readvariableop_resource:

èE
6sequential_25_dense_75_biasadd_readvariableop_resource:	èI
5sequential_25_dense_76_matmul_readvariableop_resource:
èÒE
6sequential_25_dense_76_biasadd_readvariableop_resource:	ÒH
5sequential_25_dense_77_matmul_readvariableop_resource:	ÒD
6sequential_25_dense_77_biasadd_readvariableop_resource:
identity¢-sequential_25/dense_75/BiasAdd/ReadVariableOp¢,sequential_25/dense_75/MatMul/ReadVariableOp¢-sequential_25/dense_76/BiasAdd/ReadVariableOp¢,sequential_25/dense_76/MatMul/ReadVariableOp¢-sequential_25/dense_77/BiasAdd/ReadVariableOp¢,sequential_25/dense_77/MatMul/ReadVariableOp¢9sequential_25/lstm_25/lstm_cell_25/BiasAdd/ReadVariableOp¢8sequential_25/lstm_25/lstm_cell_25/MatMul/ReadVariableOp¢:sequential_25/lstm_25/lstm_cell_25/MatMul_1/ReadVariableOp¢sequential_25/lstm_25/whileX
sequential_25/lstm_25/ShapeShapelstm_25_input*
T0*
_output_shapes
:s
)sequential_25/lstm_25/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+sequential_25/lstm_25/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+sequential_25/lstm_25/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¿
#sequential_25/lstm_25/strided_sliceStridedSlice$sequential_25/lstm_25/Shape:output:02sequential_25/lstm_25/strided_slice/stack:output:04sequential_25/lstm_25/strided_slice/stack_1:output:04sequential_25/lstm_25/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
$sequential_25/lstm_25/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :µ
"sequential_25/lstm_25/zeros/packedPack,sequential_25/lstm_25/strided_slice:output:0-sequential_25/lstm_25/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:f
!sequential_25/lstm_25/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ®
sequential_25/lstm_25/zerosFill+sequential_25/lstm_25/zeros/packed:output:0*sequential_25/lstm_25/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
&sequential_25/lstm_25/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :¹
$sequential_25/lstm_25/zeros_1/packedPack,sequential_25/lstm_25/strided_slice:output:0/sequential_25/lstm_25/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_25/lstm_25/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ´
sequential_25/lstm_25/zeros_1Fill-sequential_25/lstm_25/zeros_1/packed:output:0,sequential_25/lstm_25/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿy
$sequential_25/lstm_25/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"           
sequential_25/lstm_25/transpose	Transposelstm_25_input-sequential_25/lstm_25/transpose/perm:output:0*
T0*+
_output_shapes
:2ÿÿÿÿÿÿÿÿÿp
sequential_25/lstm_25/Shape_1Shape#sequential_25/lstm_25/transpose:y:0*
T0*
_output_shapes
:u
+sequential_25/lstm_25/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_25/lstm_25/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_25/lstm_25/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:É
%sequential_25/lstm_25/strided_slice_1StridedSlice&sequential_25/lstm_25/Shape_1:output:04sequential_25/lstm_25/strided_slice_1/stack:output:06sequential_25/lstm_25/strided_slice_1/stack_1:output:06sequential_25/lstm_25/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
1sequential_25/lstm_25/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿö
#sequential_25/lstm_25/TensorArrayV2TensorListReserve:sequential_25/lstm_25/TensorArrayV2/element_shape:output:0.sequential_25/lstm_25/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
Ksequential_25/lstm_25/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¢
=sequential_25/lstm_25/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#sequential_25/lstm_25/transpose:y:0Tsequential_25/lstm_25/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒu
+sequential_25/lstm_25/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_25/lstm_25/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_25/lstm_25/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:×
%sequential_25/lstm_25/strided_slice_2StridedSlice#sequential_25/lstm_25/transpose:y:04sequential_25/lstm_25/strided_slice_2/stack:output:06sequential_25/lstm_25/strided_slice_2/stack_1:output:06sequential_25/lstm_25/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maskº
8sequential_25/lstm_25/lstm_cell_25/MatMul/ReadVariableOpReadVariableOpAsequential_25_lstm_25_lstm_cell_25_matmul_readvariableop_resource*
_output_shapes

:h*
dtype0×
)sequential_25/lstm_25/lstm_cell_25/MatMulMatMul.sequential_25/lstm_25/strided_slice_2:output:0@sequential_25/lstm_25/lstm_cell_25/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh¾
:sequential_25/lstm_25/lstm_cell_25/MatMul_1/ReadVariableOpReadVariableOpCsequential_25_lstm_25_lstm_cell_25_matmul_1_readvariableop_resource*
_output_shapes

:h*
dtype0Ñ
+sequential_25/lstm_25/lstm_cell_25/MatMul_1MatMul$sequential_25/lstm_25/zeros:output:0Bsequential_25/lstm_25/lstm_cell_25/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿhÍ
&sequential_25/lstm_25/lstm_cell_25/addAddV23sequential_25/lstm_25/lstm_cell_25/MatMul:product:05sequential_25/lstm_25/lstm_cell_25/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh¸
9sequential_25/lstm_25/lstm_cell_25/BiasAdd/ReadVariableOpReadVariableOpBsequential_25_lstm_25_lstm_cell_25_biasadd_readvariableop_resource*
_output_shapes
:h*
dtype0Ö
*sequential_25/lstm_25/lstm_cell_25/BiasAddBiasAdd*sequential_25/lstm_25/lstm_cell_25/add:z:0Asequential_25/lstm_25/lstm_cell_25/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿht
2sequential_25/lstm_25/lstm_cell_25/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
(sequential_25/lstm_25/lstm_cell_25/splitSplit;sequential_25/lstm_25/lstm_cell_25/split/split_dim:output:03sequential_25/lstm_25/lstm_cell_25/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split
*sequential_25/lstm_25/lstm_cell_25/SigmoidSigmoid1sequential_25/lstm_25/lstm_cell_25/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
,sequential_25/lstm_25/lstm_cell_25/Sigmoid_1Sigmoid1sequential_25/lstm_25/lstm_cell_25/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¹
&sequential_25/lstm_25/lstm_cell_25/mulMul0sequential_25/lstm_25/lstm_cell_25/Sigmoid_1:y:0&sequential_25/lstm_25/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'sequential_25/lstm_25/lstm_cell_25/ReluRelu1sequential_25/lstm_25/lstm_cell_25/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
(sequential_25/lstm_25/lstm_cell_25/mul_1Mul.sequential_25/lstm_25/lstm_cell_25/Sigmoid:y:05sequential_25/lstm_25/lstm_cell_25/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ½
(sequential_25/lstm_25/lstm_cell_25/add_1AddV2*sequential_25/lstm_25/lstm_cell_25/mul:z:0,sequential_25/lstm_25/lstm_cell_25/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
,sequential_25/lstm_25/lstm_cell_25/Sigmoid_2Sigmoid1sequential_25/lstm_25/lstm_cell_25/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)sequential_25/lstm_25/lstm_cell_25/Relu_1Relu,sequential_25/lstm_25/lstm_cell_25/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÌ
(sequential_25/lstm_25/lstm_cell_25/mul_2Mul0sequential_25/lstm_25/lstm_cell_25/Sigmoid_2:y:07sequential_25/lstm_25/lstm_cell_25/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
3sequential_25/lstm_25/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ú
%sequential_25/lstm_25/TensorArrayV2_1TensorListReserve<sequential_25/lstm_25/TensorArrayV2_1/element_shape:output:0.sequential_25/lstm_25/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ\
sequential_25/lstm_25/timeConst*
_output_shapes
: *
dtype0*
value	B : y
.sequential_25/lstm_25/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿj
(sequential_25/lstm_25/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ¸
sequential_25/lstm_25/whileWhile1sequential_25/lstm_25/while/loop_counter:output:07sequential_25/lstm_25/while/maximum_iterations:output:0#sequential_25/lstm_25/time:output:0.sequential_25/lstm_25/TensorArrayV2_1:handle:0$sequential_25/lstm_25/zeros:output:0&sequential_25/lstm_25/zeros_1:output:0.sequential_25/lstm_25/strided_slice_1:output:0Msequential_25/lstm_25/TensorArrayUnstack/TensorListFromTensor:output_handle:0Asequential_25_lstm_25_lstm_cell_25_matmul_readvariableop_resourceCsequential_25_lstm_25_lstm_cell_25_matmul_1_readvariableop_resourceBsequential_25_lstm_25_lstm_cell_25_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *4
body,R*
(sequential_25_lstm_25_while_body_1041391*4
cond,R*
(sequential_25_lstm_25_while_cond_1041390*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 
Fsequential_25/lstm_25/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   
8sequential_25/lstm_25/TensorArrayV2Stack/TensorListStackTensorListStack$sequential_25/lstm_25/while:output:3Osequential_25/lstm_25/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:2ÿÿÿÿÿÿÿÿÿ*
element_dtype0~
+sequential_25/lstm_25/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿw
-sequential_25/lstm_25/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: w
-sequential_25/lstm_25/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:õ
%sequential_25/lstm_25/strided_slice_3StridedSliceAsequential_25/lstm_25/TensorArrayV2Stack/TensorListStack:tensor:04sequential_25/lstm_25/strided_slice_3/stack:output:06sequential_25/lstm_25/strided_slice_3/stack_1:output:06sequential_25/lstm_25/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask{
&sequential_25/lstm_25/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ø
!sequential_25/lstm_25/transpose_1	TransposeAsequential_25/lstm_25/TensorArrayV2Stack/TensorListStack:tensor:0/sequential_25/lstm_25/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2q
sequential_25/lstm_25/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    
!sequential_25/dropout_75/IdentityIdentity%sequential_25/lstm_25/transpose_1:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2o
sequential_25/flatten_25/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ  ³
 sequential_25/flatten_25/ReshapeReshape*sequential_25/dropout_75/Identity:output:0'sequential_25/flatten_25/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
¤
,sequential_25/dense_75/MatMul/ReadVariableOpReadVariableOp5sequential_25_dense_75_matmul_readvariableop_resource* 
_output_shapes
:

è*
dtype0»
sequential_25/dense_75/MatMulMatMul)sequential_25/flatten_25/Reshape:output:04sequential_25/dense_75/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè¡
-sequential_25/dense_75/BiasAdd/ReadVariableOpReadVariableOp6sequential_25_dense_75_biasadd_readvariableop_resource*
_output_shapes	
:è*
dtype0¼
sequential_25/dense_75/BiasAddBiasAdd'sequential_25/dense_75/MatMul:product:05sequential_25/dense_75/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè
sequential_25/dense_75/ReluRelu'sequential_25/dense_75/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè
!sequential_25/dropout_76/IdentityIdentity)sequential_25/dense_75/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè¤
,sequential_25/dense_76/MatMul/ReadVariableOpReadVariableOp5sequential_25_dense_76_matmul_readvariableop_resource* 
_output_shapes
:
èÒ*
dtype0¼
sequential_25/dense_76/MatMulMatMul*sequential_25/dropout_76/Identity:output:04sequential_25/dense_76/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÒ¡
-sequential_25/dense_76/BiasAdd/ReadVariableOpReadVariableOp6sequential_25_dense_76_biasadd_readvariableop_resource*
_output_shapes	
:Ò*
dtype0¼
sequential_25/dense_76/BiasAddBiasAdd'sequential_25/dense_76/MatMul:product:05sequential_25/dense_76/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÒ
sequential_25/dense_76/ReluRelu'sequential_25/dense_76/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÒ
!sequential_25/dropout_77/IdentityIdentity)sequential_25/dense_76/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÒ£
,sequential_25/dense_77/MatMul/ReadVariableOpReadVariableOp5sequential_25_dense_77_matmul_readvariableop_resource*
_output_shapes
:	Ò*
dtype0»
sequential_25/dense_77/MatMulMatMul*sequential_25/dropout_77/Identity:output:04sequential_25/dense_77/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
-sequential_25/dense_77/BiasAdd/ReadVariableOpReadVariableOp6sequential_25_dense_77_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0»
sequential_25/dense_77/BiasAddBiasAdd'sequential_25/dense_77/MatMul:product:05sequential_25/dense_77/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
sequential_25/dense_77/SoftmaxSoftmax'sequential_25/dense_77/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
IdentityIdentity(sequential_25/dense_77/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿµ
NoOpNoOp.^sequential_25/dense_75/BiasAdd/ReadVariableOp-^sequential_25/dense_75/MatMul/ReadVariableOp.^sequential_25/dense_76/BiasAdd/ReadVariableOp-^sequential_25/dense_76/MatMul/ReadVariableOp.^sequential_25/dense_77/BiasAdd/ReadVariableOp-^sequential_25/dense_77/MatMul/ReadVariableOp:^sequential_25/lstm_25/lstm_cell_25/BiasAdd/ReadVariableOp9^sequential_25/lstm_25/lstm_cell_25/MatMul/ReadVariableOp;^sequential_25/lstm_25/lstm_cell_25/MatMul_1/ReadVariableOp^sequential_25/lstm_25/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):ÿÿÿÿÿÿÿÿÿ2: : : : : : : : : 2^
-sequential_25/dense_75/BiasAdd/ReadVariableOp-sequential_25/dense_75/BiasAdd/ReadVariableOp2\
,sequential_25/dense_75/MatMul/ReadVariableOp,sequential_25/dense_75/MatMul/ReadVariableOp2^
-sequential_25/dense_76/BiasAdd/ReadVariableOp-sequential_25/dense_76/BiasAdd/ReadVariableOp2\
,sequential_25/dense_76/MatMul/ReadVariableOp,sequential_25/dense_76/MatMul/ReadVariableOp2^
-sequential_25/dense_77/BiasAdd/ReadVariableOp-sequential_25/dense_77/BiasAdd/ReadVariableOp2\
,sequential_25/dense_77/MatMul/ReadVariableOp,sequential_25/dense_77/MatMul/ReadVariableOp2v
9sequential_25/lstm_25/lstm_cell_25/BiasAdd/ReadVariableOp9sequential_25/lstm_25/lstm_cell_25/BiasAdd/ReadVariableOp2t
8sequential_25/lstm_25/lstm_cell_25/MatMul/ReadVariableOp8sequential_25/lstm_25/lstm_cell_25/MatMul/ReadVariableOp2x
:sequential_25/lstm_25/lstm_cell_25/MatMul_1/ReadVariableOp:sequential_25/lstm_25/lstm_cell_25/MatMul_1/ReadVariableOp2:
sequential_25/lstm_25/whilesequential_25/lstm_25/while:Z V
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
'
_user_specified_namelstm_25_input


â
/__inference_sequential_25_layer_call_fn_1042568

inputs
unknown:h
	unknown_0:h
	unknown_1:h
	unknown_2:

è
	unknown_3:	è
	unknown_4:
èÒ
	unknown_5:	Ò
	unknown_6:	Ò
	unknown_7:
identity¢StatefulPartitionedCallº
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*+
_read_only_resource_inputs
		*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_sequential_25_layer_call_and_return_conditional_losses_1042089o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):ÿÿÿÿÿÿÿÿÿ2: : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
Á
c
G__inference_flatten_25_layer_call_and_return_conditional_losses_1043629

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ2:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
º
È
while_cond_1041772
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1041772___redundant_placeholder05
1while_while_cond_1041772___redundant_placeholder15
1while_while_cond_1041772___redundant_placeholder25
1while_while_cond_1041772___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:


â
/__inference_sequential_25_layer_call_fn_1042591

inputs
unknown:h
	unknown_0:h
	unknown_1:h
	unknown_2:

è
	unknown_3:	è
	unknown_4:
èÒ
	unknown_5:	Ò
	unknown_6:	Ò
	unknown_7:
identity¢StatefulPartitionedCallº
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*+
_read_only_resource_inputs
		*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_sequential_25_layer_call_and_return_conditional_losses_1042435o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):ÿÿÿÿÿÿÿÿÿ2: : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
J

D__inference_lstm_25_layer_call_and_return_conditional_losses_1042371

inputs=
+lstm_cell_25_matmul_readvariableop_resource:h?
-lstm_cell_25_matmul_1_readvariableop_resource:h:
,lstm_cell_25_biasadd_readvariableop_resource:h
identity¢#lstm_cell_25/BiasAdd/ReadVariableOp¢"lstm_cell_25/MatMul/ReadVariableOp¢$lstm_cell_25/MatMul_1/ReadVariableOp¢while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:2ÿÿÿÿÿÿÿÿÿD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
"lstm_cell_25/MatMul/ReadVariableOpReadVariableOp+lstm_cell_25_matmul_readvariableop_resource*
_output_shapes

:h*
dtype0
lstm_cell_25/MatMulMatMulstrided_slice_2:output:0*lstm_cell_25/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
$lstm_cell_25/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_25_matmul_1_readvariableop_resource*
_output_shapes

:h*
dtype0
lstm_cell_25/MatMul_1MatMulzeros:output:0,lstm_cell_25/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
lstm_cell_25/addAddV2lstm_cell_25/MatMul:product:0lstm_cell_25/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
#lstm_cell_25/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_25_biasadd_readvariableop_resource*
_output_shapes
:h*
dtype0
lstm_cell_25/BiasAddBiasAddlstm_cell_25/add:z:0+lstm_cell_25/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh^
lstm_cell_25/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ý
lstm_cell_25/splitSplit%lstm_cell_25/split/split_dim:output:0lstm_cell_25/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_splitn
lstm_cell_25/SigmoidSigmoidlstm_cell_25/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
lstm_cell_25/Sigmoid_1Sigmoidlstm_cell_25/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
lstm_cell_25/mulMullstm_cell_25/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
lstm_cell_25/ReluRelulstm_cell_25/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_25/mul_1Mullstm_cell_25/Sigmoid:y:0lstm_cell_25/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ{
lstm_cell_25/add_1AddV2lstm_cell_25/mul:z:0lstm_cell_25/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
lstm_cell_25/Sigmoid_2Sigmoidlstm_cell_25/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
lstm_cell_25/Relu_1Relulstm_cell_25/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_25/mul_2Mullstm_cell_25/Sigmoid_2:y:0!lstm_cell_25/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_25_matmul_readvariableop_resource-lstm_cell_25_matmul_1_readvariableop_resource,lstm_cell_25_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1042287*
condR
while_cond_1042286*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Â
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:2ÿÿÿÿÿÿÿÿÿ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2À
NoOpNoOp$^lstm_cell_25/BiasAdd/ReadVariableOp#^lstm_cell_25/MatMul/ReadVariableOp%^lstm_cell_25/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ2: : : 2J
#lstm_cell_25/BiasAdd/ReadVariableOp#lstm_cell_25/BiasAdd/ReadVariableOp2H
"lstm_cell_25/MatMul/ReadVariableOp"lstm_cell_25/MatMul/ReadVariableOp2L
$lstm_cell_25/MatMul_1/ReadVariableOp$lstm_cell_25/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
#
ä
while_body_1041582
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_25_1041606_0:h.
while_lstm_cell_25_1041608_0:h*
while_lstm_cell_25_1041610_0:h
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_25_1041606:h,
while_lstm_cell_25_1041608:h(
while_lstm_cell_25_1041610:h¢*while/lstm_cell_25/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0·
*while/lstm_cell_25/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_25_1041606_0while_lstm_cell_25_1041608_0while_lstm_cell_25_1041610_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_lstm_cell_25_layer_call_and_return_conditional_losses_1041568Ü
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_25/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éèÒ
while/Identity_4Identity3while/lstm_cell_25/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/Identity_5Identity3while/lstm_cell_25/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿy

while/NoOpNoOp+^while/lstm_cell_25/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_25_1041606while_lstm_cell_25_1041606_0":
while_lstm_cell_25_1041608while_lstm_cell_25_1041608_0":
while_lstm_cell_25_1041610while_lstm_cell_25_1041610_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2X
*while/lstm_cell_25/StatefulPartitionedCall*while/lstm_cell_25/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
J

D__inference_lstm_25_layer_call_and_return_conditional_losses_1043591

inputs=
+lstm_cell_25_matmul_readvariableop_resource:h?
-lstm_cell_25_matmul_1_readvariableop_resource:h:
,lstm_cell_25_biasadd_readvariableop_resource:h
identity¢#lstm_cell_25/BiasAdd/ReadVariableOp¢"lstm_cell_25/MatMul/ReadVariableOp¢$lstm_cell_25/MatMul_1/ReadVariableOp¢while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:2ÿÿÿÿÿÿÿÿÿD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
"lstm_cell_25/MatMul/ReadVariableOpReadVariableOp+lstm_cell_25_matmul_readvariableop_resource*
_output_shapes

:h*
dtype0
lstm_cell_25/MatMulMatMulstrided_slice_2:output:0*lstm_cell_25/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
$lstm_cell_25/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_25_matmul_1_readvariableop_resource*
_output_shapes

:h*
dtype0
lstm_cell_25/MatMul_1MatMulzeros:output:0,lstm_cell_25/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
lstm_cell_25/addAddV2lstm_cell_25/MatMul:product:0lstm_cell_25/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
#lstm_cell_25/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_25_biasadd_readvariableop_resource*
_output_shapes
:h*
dtype0
lstm_cell_25/BiasAddBiasAddlstm_cell_25/add:z:0+lstm_cell_25/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh^
lstm_cell_25/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ý
lstm_cell_25/splitSplit%lstm_cell_25/split/split_dim:output:0lstm_cell_25/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_splitn
lstm_cell_25/SigmoidSigmoidlstm_cell_25/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
lstm_cell_25/Sigmoid_1Sigmoidlstm_cell_25/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
lstm_cell_25/mulMullstm_cell_25/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
lstm_cell_25/ReluRelulstm_cell_25/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_25/mul_1Mullstm_cell_25/Sigmoid:y:0lstm_cell_25/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ{
lstm_cell_25/add_1AddV2lstm_cell_25/mul:z:0lstm_cell_25/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
lstm_cell_25/Sigmoid_2Sigmoidlstm_cell_25/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
lstm_cell_25/Relu_1Relulstm_cell_25/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_25/mul_2Mullstm_cell_25/Sigmoid_2:y:0!lstm_cell_25/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_25_matmul_readvariableop_resource-lstm_cell_25_matmul_1_readvariableop_resource,lstm_cell_25_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1043507*
condR
while_cond_1043506*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Â
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:2ÿÿÿÿÿÿÿÿÿ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2À
NoOpNoOp$^lstm_cell_25/BiasAdd/ReadVariableOp#^lstm_cell_25/MatMul/ReadVariableOp%^lstm_cell_25/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ2: : : 2J
#lstm_cell_25/BiasAdd/ReadVariableOp#lstm_cell_25/BiasAdd/ReadVariableOp2H
"lstm_cell_25/MatMul/ReadVariableOp"lstm_cell_25/MatMul/ReadVariableOp2L
$lstm_cell_25/MatMul_1/ReadVariableOp$lstm_cell_25/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
ÚJ

D__inference_lstm_25_layer_call_and_return_conditional_losses_1043162
inputs_0=
+lstm_cell_25_matmul_readvariableop_resource:h?
-lstm_cell_25_matmul_1_readvariableop_resource:h:
,lstm_cell_25_biasadd_readvariableop_resource:h
identity¢#lstm_cell_25/BiasAdd/ReadVariableOp¢"lstm_cell_25/MatMul/ReadVariableOp¢$lstm_cell_25/MatMul_1/ReadVariableOp¢while=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
"lstm_cell_25/MatMul/ReadVariableOpReadVariableOp+lstm_cell_25_matmul_readvariableop_resource*
_output_shapes

:h*
dtype0
lstm_cell_25/MatMulMatMulstrided_slice_2:output:0*lstm_cell_25/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
$lstm_cell_25/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_25_matmul_1_readvariableop_resource*
_output_shapes

:h*
dtype0
lstm_cell_25/MatMul_1MatMulzeros:output:0,lstm_cell_25/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
lstm_cell_25/addAddV2lstm_cell_25/MatMul:product:0lstm_cell_25/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
#lstm_cell_25/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_25_biasadd_readvariableop_resource*
_output_shapes
:h*
dtype0
lstm_cell_25/BiasAddBiasAddlstm_cell_25/add:z:0+lstm_cell_25/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh^
lstm_cell_25/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ý
lstm_cell_25/splitSplit%lstm_cell_25/split/split_dim:output:0lstm_cell_25/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_splitn
lstm_cell_25/SigmoidSigmoidlstm_cell_25/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
lstm_cell_25/Sigmoid_1Sigmoidlstm_cell_25/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
lstm_cell_25/mulMullstm_cell_25/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
lstm_cell_25/ReluRelulstm_cell_25/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_25/mul_1Mullstm_cell_25/Sigmoid:y:0lstm_cell_25/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ{
lstm_cell_25/add_1AddV2lstm_cell_25/mul:z:0lstm_cell_25/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
lstm_cell_25/Sigmoid_2Sigmoidlstm_cell_25/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
lstm_cell_25/Relu_1Relulstm_cell_25/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_25/mul_2Mullstm_cell_25/Sigmoid_2:y:0!lstm_cell_25/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_25_matmul_readvariableop_resource-lstm_cell_25_matmul_1_readvariableop_resource,lstm_cell_25_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1043078*
condR
while_cond_1043077*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÀ
NoOpNoOp$^lstm_cell_25/BiasAdd/ReadVariableOp#^lstm_cell_25/MatMul/ReadVariableOp%^lstm_cell_25/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2J
#lstm_cell_25/BiasAdd/ReadVariableOp#lstm_cell_25/BiasAdd/ReadVariableOp2H
"lstm_cell_25/MatMul/ReadVariableOp"lstm_cell_25/MatMul/ReadVariableOp2L
$lstm_cell_25/MatMul_1/ReadVariableOp$lstm_cell_25/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
ù
e
,__inference_dropout_77_layer_call_fn_1043706

inputs
identity¢StatefulPartitionedCallÃ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÒ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dropout_77_layer_call_and_return_conditional_losses_1042140p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÒ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿÒ22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÒ
 
_user_specified_nameinputs
§
H
,__inference_dropout_76_layer_call_fn_1043654

inputs
identity³
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dropout_76_layer_call_and_return_conditional_losses_1042045a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿè:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè
 
_user_specified_nameinputs
ÌA
Ë

lstm_25_while_body_1042819,
(lstm_25_while_lstm_25_while_loop_counter2
.lstm_25_while_lstm_25_while_maximum_iterations
lstm_25_while_placeholder
lstm_25_while_placeholder_1
lstm_25_while_placeholder_2
lstm_25_while_placeholder_3+
'lstm_25_while_lstm_25_strided_slice_1_0g
clstm_25_while_tensorarrayv2read_tensorlistgetitem_lstm_25_tensorarrayunstack_tensorlistfromtensor_0M
;lstm_25_while_lstm_cell_25_matmul_readvariableop_resource_0:hO
=lstm_25_while_lstm_cell_25_matmul_1_readvariableop_resource_0:hJ
<lstm_25_while_lstm_cell_25_biasadd_readvariableop_resource_0:h
lstm_25_while_identity
lstm_25_while_identity_1
lstm_25_while_identity_2
lstm_25_while_identity_3
lstm_25_while_identity_4
lstm_25_while_identity_5)
%lstm_25_while_lstm_25_strided_slice_1e
alstm_25_while_tensorarrayv2read_tensorlistgetitem_lstm_25_tensorarrayunstack_tensorlistfromtensorK
9lstm_25_while_lstm_cell_25_matmul_readvariableop_resource:hM
;lstm_25_while_lstm_cell_25_matmul_1_readvariableop_resource:hH
:lstm_25_while_lstm_cell_25_biasadd_readvariableop_resource:h¢1lstm_25/while/lstm_cell_25/BiasAdd/ReadVariableOp¢0lstm_25/while/lstm_cell_25/MatMul/ReadVariableOp¢2lstm_25/while/lstm_cell_25/MatMul_1/ReadVariableOp
?lstm_25/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Î
1lstm_25/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_25_while_tensorarrayv2read_tensorlistgetitem_lstm_25_tensorarrayunstack_tensorlistfromtensor_0lstm_25_while_placeholderHlstm_25/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0¬
0lstm_25/while/lstm_cell_25/MatMul/ReadVariableOpReadVariableOp;lstm_25_while_lstm_cell_25_matmul_readvariableop_resource_0*
_output_shapes

:h*
dtype0Ñ
!lstm_25/while/lstm_cell_25/MatMulMatMul8lstm_25/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_25/while/lstm_cell_25/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh°
2lstm_25/while/lstm_cell_25/MatMul_1/ReadVariableOpReadVariableOp=lstm_25_while_lstm_cell_25_matmul_1_readvariableop_resource_0*
_output_shapes

:h*
dtype0¸
#lstm_25/while/lstm_cell_25/MatMul_1MatMullstm_25_while_placeholder_2:lstm_25/while/lstm_cell_25/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿhµ
lstm_25/while/lstm_cell_25/addAddV2+lstm_25/while/lstm_cell_25/MatMul:product:0-lstm_25/while/lstm_cell_25/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿhª
1lstm_25/while/lstm_cell_25/BiasAdd/ReadVariableOpReadVariableOp<lstm_25_while_lstm_cell_25_biasadd_readvariableop_resource_0*
_output_shapes
:h*
dtype0¾
"lstm_25/while/lstm_cell_25/BiasAddBiasAdd"lstm_25/while/lstm_cell_25/add:z:09lstm_25/while/lstm_cell_25/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿhl
*lstm_25/while/lstm_cell_25/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
 lstm_25/while/lstm_cell_25/splitSplit3lstm_25/while/lstm_cell_25/split/split_dim:output:0+lstm_25/while/lstm_cell_25/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split
"lstm_25/while/lstm_cell_25/SigmoidSigmoid)lstm_25/while/lstm_cell_25/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$lstm_25/while/lstm_cell_25/Sigmoid_1Sigmoid)lstm_25/while/lstm_cell_25/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_25/while/lstm_cell_25/mulMul(lstm_25/while/lstm_cell_25/Sigmoid_1:y:0lstm_25_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_25/while/lstm_cell_25/ReluRelu)lstm_25/while/lstm_cell_25/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ°
 lstm_25/while/lstm_cell_25/mul_1Mul&lstm_25/while/lstm_cell_25/Sigmoid:y:0-lstm_25/while/lstm_cell_25/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¥
 lstm_25/while/lstm_cell_25/add_1AddV2"lstm_25/while/lstm_cell_25/mul:z:0$lstm_25/while/lstm_cell_25/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$lstm_25/while/lstm_cell_25/Sigmoid_2Sigmoid)lstm_25/while/lstm_cell_25/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!lstm_25/while/lstm_cell_25/Relu_1Relu$lstm_25/while/lstm_cell_25/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´
 lstm_25/while/lstm_cell_25/mul_2Mul(lstm_25/while/lstm_cell_25/Sigmoid_2:y:0/lstm_25/while/lstm_cell_25/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿå
2lstm_25/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_25_while_placeholder_1lstm_25_while_placeholder$lstm_25/while/lstm_cell_25/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒU
lstm_25/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_25/while/addAddV2lstm_25_while_placeholderlstm_25/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_25/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_25/while/add_1AddV2(lstm_25_while_lstm_25_while_loop_counterlstm_25/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_25/while/IdentityIdentitylstm_25/while/add_1:z:0^lstm_25/while/NoOp*
T0*
_output_shapes
: 
lstm_25/while/Identity_1Identity.lstm_25_while_lstm_25_while_maximum_iterations^lstm_25/while/NoOp*
T0*
_output_shapes
: q
lstm_25/while/Identity_2Identitylstm_25/while/add:z:0^lstm_25/while/NoOp*
T0*
_output_shapes
: ±
lstm_25/while/Identity_3IdentityBlstm_25/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_25/while/NoOp*
T0*
_output_shapes
: :éèÒ
lstm_25/while/Identity_4Identity$lstm_25/while/lstm_cell_25/mul_2:z:0^lstm_25/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_25/while/Identity_5Identity$lstm_25/while/lstm_cell_25/add_1:z:0^lstm_25/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿð
lstm_25/while/NoOpNoOp2^lstm_25/while/lstm_cell_25/BiasAdd/ReadVariableOp1^lstm_25/while/lstm_cell_25/MatMul/ReadVariableOp3^lstm_25/while/lstm_cell_25/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_25_while_identitylstm_25/while/Identity:output:0"=
lstm_25_while_identity_1!lstm_25/while/Identity_1:output:0"=
lstm_25_while_identity_2!lstm_25/while/Identity_2:output:0"=
lstm_25_while_identity_3!lstm_25/while/Identity_3:output:0"=
lstm_25_while_identity_4!lstm_25/while/Identity_4:output:0"=
lstm_25_while_identity_5!lstm_25/while/Identity_5:output:0"P
%lstm_25_while_lstm_25_strided_slice_1'lstm_25_while_lstm_25_strided_slice_1_0"z
:lstm_25_while_lstm_cell_25_biasadd_readvariableop_resource<lstm_25_while_lstm_cell_25_biasadd_readvariableop_resource_0"|
;lstm_25_while_lstm_cell_25_matmul_1_readvariableop_resource=lstm_25_while_lstm_cell_25_matmul_1_readvariableop_resource_0"x
9lstm_25_while_lstm_cell_25_matmul_readvariableop_resource;lstm_25_while_lstm_cell_25_matmul_readvariableop_resource_0"È
alstm_25_while_tensorarrayv2read_tensorlistgetitem_lstm_25_tensorarrayunstack_tensorlistfromtensorclstm_25_while_tensorarrayv2read_tensorlistgetitem_lstm_25_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2f
1lstm_25/while/lstm_cell_25/BiasAdd/ReadVariableOp1lstm_25/while/lstm_cell_25/BiasAdd/ReadVariableOp2d
0lstm_25/while/lstm_cell_25/MatMul/ReadVariableOp0lstm_25/while/lstm_cell_25/MatMul/ReadVariableOp2h
2lstm_25/while/lstm_cell_25/MatMul_1/ReadVariableOp2lstm_25/while/lstm_cell_25/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
R

(sequential_25_lstm_25_while_body_1041391H
Dsequential_25_lstm_25_while_sequential_25_lstm_25_while_loop_counterN
Jsequential_25_lstm_25_while_sequential_25_lstm_25_while_maximum_iterations+
'sequential_25_lstm_25_while_placeholder-
)sequential_25_lstm_25_while_placeholder_1-
)sequential_25_lstm_25_while_placeholder_2-
)sequential_25_lstm_25_while_placeholder_3G
Csequential_25_lstm_25_while_sequential_25_lstm_25_strided_slice_1_0
sequential_25_lstm_25_while_tensorarrayv2read_tensorlistgetitem_sequential_25_lstm_25_tensorarrayunstack_tensorlistfromtensor_0[
Isequential_25_lstm_25_while_lstm_cell_25_matmul_readvariableop_resource_0:h]
Ksequential_25_lstm_25_while_lstm_cell_25_matmul_1_readvariableop_resource_0:hX
Jsequential_25_lstm_25_while_lstm_cell_25_biasadd_readvariableop_resource_0:h(
$sequential_25_lstm_25_while_identity*
&sequential_25_lstm_25_while_identity_1*
&sequential_25_lstm_25_while_identity_2*
&sequential_25_lstm_25_while_identity_3*
&sequential_25_lstm_25_while_identity_4*
&sequential_25_lstm_25_while_identity_5E
Asequential_25_lstm_25_while_sequential_25_lstm_25_strided_slice_1
}sequential_25_lstm_25_while_tensorarrayv2read_tensorlistgetitem_sequential_25_lstm_25_tensorarrayunstack_tensorlistfromtensorY
Gsequential_25_lstm_25_while_lstm_cell_25_matmul_readvariableop_resource:h[
Isequential_25_lstm_25_while_lstm_cell_25_matmul_1_readvariableop_resource:hV
Hsequential_25_lstm_25_while_lstm_cell_25_biasadd_readvariableop_resource:h¢?sequential_25/lstm_25/while/lstm_cell_25/BiasAdd/ReadVariableOp¢>sequential_25/lstm_25/while/lstm_cell_25/MatMul/ReadVariableOp¢@sequential_25/lstm_25/while/lstm_cell_25/MatMul_1/ReadVariableOp
Msequential_25/lstm_25/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   
?sequential_25/lstm_25/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_25_lstm_25_while_tensorarrayv2read_tensorlistgetitem_sequential_25_lstm_25_tensorarrayunstack_tensorlistfromtensor_0'sequential_25_lstm_25_while_placeholderVsequential_25/lstm_25/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0È
>sequential_25/lstm_25/while/lstm_cell_25/MatMul/ReadVariableOpReadVariableOpIsequential_25_lstm_25_while_lstm_cell_25_matmul_readvariableop_resource_0*
_output_shapes

:h*
dtype0û
/sequential_25/lstm_25/while/lstm_cell_25/MatMulMatMulFsequential_25/lstm_25/while/TensorArrayV2Read/TensorListGetItem:item:0Fsequential_25/lstm_25/while/lstm_cell_25/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿhÌ
@sequential_25/lstm_25/while/lstm_cell_25/MatMul_1/ReadVariableOpReadVariableOpKsequential_25_lstm_25_while_lstm_cell_25_matmul_1_readvariableop_resource_0*
_output_shapes

:h*
dtype0â
1sequential_25/lstm_25/while/lstm_cell_25/MatMul_1MatMul)sequential_25_lstm_25_while_placeholder_2Hsequential_25/lstm_25/while/lstm_cell_25/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿhß
,sequential_25/lstm_25/while/lstm_cell_25/addAddV29sequential_25/lstm_25/while/lstm_cell_25/MatMul:product:0;sequential_25/lstm_25/while/lstm_cell_25/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿhÆ
?sequential_25/lstm_25/while/lstm_cell_25/BiasAdd/ReadVariableOpReadVariableOpJsequential_25_lstm_25_while_lstm_cell_25_biasadd_readvariableop_resource_0*
_output_shapes
:h*
dtype0è
0sequential_25/lstm_25/while/lstm_cell_25/BiasAddBiasAdd0sequential_25/lstm_25/while/lstm_cell_25/add:z:0Gsequential_25/lstm_25/while/lstm_cell_25/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿhz
8sequential_25/lstm_25/while/lstm_cell_25/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :±
.sequential_25/lstm_25/while/lstm_cell_25/splitSplitAsequential_25/lstm_25/while/lstm_cell_25/split/split_dim:output:09sequential_25/lstm_25/while/lstm_cell_25/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split¦
0sequential_25/lstm_25/while/lstm_cell_25/SigmoidSigmoid7sequential_25/lstm_25/while/lstm_cell_25/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¨
2sequential_25/lstm_25/while/lstm_cell_25/Sigmoid_1Sigmoid7sequential_25/lstm_25/while/lstm_cell_25/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
,sequential_25/lstm_25/while/lstm_cell_25/mulMul6sequential_25/lstm_25/while/lstm_cell_25/Sigmoid_1:y:0)sequential_25_lstm_25_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
-sequential_25/lstm_25/while/lstm_cell_25/ReluRelu7sequential_25/lstm_25/while/lstm_cell_25/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÚ
.sequential_25/lstm_25/while/lstm_cell_25/mul_1Mul4sequential_25/lstm_25/while/lstm_cell_25/Sigmoid:y:0;sequential_25/lstm_25/while/lstm_cell_25/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÏ
.sequential_25/lstm_25/while/lstm_cell_25/add_1AddV20sequential_25/lstm_25/while/lstm_cell_25/mul:z:02sequential_25/lstm_25/while/lstm_cell_25/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¨
2sequential_25/lstm_25/while/lstm_cell_25/Sigmoid_2Sigmoid7sequential_25/lstm_25/while/lstm_cell_25/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
/sequential_25/lstm_25/while/lstm_cell_25/Relu_1Relu2sequential_25/lstm_25/while/lstm_cell_25/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÞ
.sequential_25/lstm_25/while/lstm_cell_25/mul_2Mul6sequential_25/lstm_25/while/lstm_cell_25/Sigmoid_2:y:0=sequential_25/lstm_25/while/lstm_cell_25/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
@sequential_25/lstm_25/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem)sequential_25_lstm_25_while_placeholder_1'sequential_25_lstm_25_while_placeholder2sequential_25/lstm_25/while/lstm_cell_25/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒc
!sequential_25/lstm_25/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
sequential_25/lstm_25/while/addAddV2'sequential_25_lstm_25_while_placeholder*sequential_25/lstm_25/while/add/y:output:0*
T0*
_output_shapes
: e
#sequential_25/lstm_25/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :¿
!sequential_25/lstm_25/while/add_1AddV2Dsequential_25_lstm_25_while_sequential_25_lstm_25_while_loop_counter,sequential_25/lstm_25/while/add_1/y:output:0*
T0*
_output_shapes
: 
$sequential_25/lstm_25/while/IdentityIdentity%sequential_25/lstm_25/while/add_1:z:0!^sequential_25/lstm_25/while/NoOp*
T0*
_output_shapes
: Â
&sequential_25/lstm_25/while/Identity_1IdentityJsequential_25_lstm_25_while_sequential_25_lstm_25_while_maximum_iterations!^sequential_25/lstm_25/while/NoOp*
T0*
_output_shapes
: 
&sequential_25/lstm_25/while/Identity_2Identity#sequential_25/lstm_25/while/add:z:0!^sequential_25/lstm_25/while/NoOp*
T0*
_output_shapes
: Û
&sequential_25/lstm_25/while/Identity_3IdentityPsequential_25/lstm_25/while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^sequential_25/lstm_25/while/NoOp*
T0*
_output_shapes
: :éèÒ»
&sequential_25/lstm_25/while/Identity_4Identity2sequential_25/lstm_25/while/lstm_cell_25/mul_2:z:0!^sequential_25/lstm_25/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»
&sequential_25/lstm_25/while/Identity_5Identity2sequential_25/lstm_25/while/lstm_cell_25/add_1:z:0!^sequential_25/lstm_25/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¨
 sequential_25/lstm_25/while/NoOpNoOp@^sequential_25/lstm_25/while/lstm_cell_25/BiasAdd/ReadVariableOp?^sequential_25/lstm_25/while/lstm_cell_25/MatMul/ReadVariableOpA^sequential_25/lstm_25/while/lstm_cell_25/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "U
$sequential_25_lstm_25_while_identity-sequential_25/lstm_25/while/Identity:output:0"Y
&sequential_25_lstm_25_while_identity_1/sequential_25/lstm_25/while/Identity_1:output:0"Y
&sequential_25_lstm_25_while_identity_2/sequential_25/lstm_25/while/Identity_2:output:0"Y
&sequential_25_lstm_25_while_identity_3/sequential_25/lstm_25/while/Identity_3:output:0"Y
&sequential_25_lstm_25_while_identity_4/sequential_25/lstm_25/while/Identity_4:output:0"Y
&sequential_25_lstm_25_while_identity_5/sequential_25/lstm_25/while/Identity_5:output:0"
Hsequential_25_lstm_25_while_lstm_cell_25_biasadd_readvariableop_resourceJsequential_25_lstm_25_while_lstm_cell_25_biasadd_readvariableop_resource_0"
Isequential_25_lstm_25_while_lstm_cell_25_matmul_1_readvariableop_resourceKsequential_25_lstm_25_while_lstm_cell_25_matmul_1_readvariableop_resource_0"
Gsequential_25_lstm_25_while_lstm_cell_25_matmul_readvariableop_resourceIsequential_25_lstm_25_while_lstm_cell_25_matmul_readvariableop_resource_0"
Asequential_25_lstm_25_while_sequential_25_lstm_25_strided_slice_1Csequential_25_lstm_25_while_sequential_25_lstm_25_strided_slice_1_0"
}sequential_25_lstm_25_while_tensorarrayv2read_tensorlistgetitem_sequential_25_lstm_25_tensorarrayunstack_tensorlistfromtensorsequential_25_lstm_25_while_tensorarrayv2read_tensorlistgetitem_sequential_25_lstm_25_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2
?sequential_25/lstm_25/while/lstm_cell_25/BiasAdd/ReadVariableOp?sequential_25/lstm_25/while/lstm_cell_25/BiasAdd/ReadVariableOp2
>sequential_25/lstm_25/while/lstm_cell_25/MatMul/ReadVariableOp>sequential_25/lstm_25/while/lstm_cell_25/MatMul/ReadVariableOp2
@sequential_25/lstm_25/while/lstm_cell_25/MatMul_1/ReadVariableOp@sequential_25/lstm_25/while/lstm_cell_25/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
8
Ë
while_body_1042287
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_25_matmul_readvariableop_resource_0:hG
5while_lstm_cell_25_matmul_1_readvariableop_resource_0:hB
4while_lstm_cell_25_biasadd_readvariableop_resource_0:h
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_25_matmul_readvariableop_resource:hE
3while_lstm_cell_25_matmul_1_readvariableop_resource:h@
2while_lstm_cell_25_biasadd_readvariableop_resource:h¢)while/lstm_cell_25/BiasAdd/ReadVariableOp¢(while/lstm_cell_25/MatMul/ReadVariableOp¢*while/lstm_cell_25/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
(while/lstm_cell_25/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_25_matmul_readvariableop_resource_0*
_output_shapes

:h*
dtype0¹
while/lstm_cell_25/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_25/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh 
*while/lstm_cell_25/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_25_matmul_1_readvariableop_resource_0*
_output_shapes

:h*
dtype0 
while/lstm_cell_25/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_25/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
while/lstm_cell_25/addAddV2#while/lstm_cell_25/MatMul:product:0%while/lstm_cell_25/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
)while/lstm_cell_25/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_25_biasadd_readvariableop_resource_0*
_output_shapes
:h*
dtype0¦
while/lstm_cell_25/BiasAddBiasAddwhile/lstm_cell_25/add:z:01while/lstm_cell_25/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿhd
"while/lstm_cell_25/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_25/splitSplit+while/lstm_cell_25/split/split_dim:output:0#while/lstm_cell_25/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_splitz
while/lstm_cell_25/SigmoidSigmoid!while/lstm_cell_25/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|
while/lstm_cell_25/Sigmoid_1Sigmoid!while/lstm_cell_25/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_25/mulMul while/lstm_cell_25/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿt
while/lstm_cell_25/ReluRelu!while/lstm_cell_25/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_25/mul_1Mulwhile/lstm_cell_25/Sigmoid:y:0%while/lstm_cell_25/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_25/add_1AddV2while/lstm_cell_25/mul:z:0while/lstm_cell_25/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|
while/lstm_cell_25/Sigmoid_2Sigmoid!while/lstm_cell_25/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿq
while/lstm_cell_25/Relu_1Reluwhile/lstm_cell_25/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_25/mul_2Mul while/lstm_cell_25/Sigmoid_2:y:0'while/lstm_cell_25/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÅ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_25/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éèÒy
while/Identity_4Identitywhile/lstm_cell_25/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿy
while/Identity_5Identitywhile/lstm_cell_25/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÐ

while/NoOpNoOp*^while/lstm_cell_25/BiasAdd/ReadVariableOp)^while/lstm_cell_25/MatMul/ReadVariableOp+^while/lstm_cell_25/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_25_biasadd_readvariableop_resource4while_lstm_cell_25_biasadd_readvariableop_resource_0"l
3while_lstm_cell_25_matmul_1_readvariableop_resource5while_lstm_cell_25_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_25_matmul_readvariableop_resource3while_lstm_cell_25_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2V
)while/lstm_cell_25/BiasAdd/ReadVariableOp)while/lstm_cell_25/BiasAdd/ReadVariableOp2T
(while/lstm_cell_25/MatMul/ReadVariableOp(while/lstm_cell_25/MatMul/ReadVariableOp2X
*while/lstm_cell_25/MatMul_1/ReadVariableOp*while/lstm_cell_25/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
§
H
,__inference_dropout_77_layer_call_fn_1043701

inputs
identity³
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÒ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dropout_77_layer_call_and_return_conditional_losses_1042069a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÒ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿÒ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÒ
 
_user_specified_nameinputs
º
È
while_cond_1041915
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1041915___redundant_placeholder05
1while_while_cond_1041915___redundant_placeholder15
1while_while_cond_1041915___redundant_placeholder25
1while_while_cond_1041915___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
#
ä
while_body_1041773
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_25_1041797_0:h.
while_lstm_cell_25_1041799_0:h*
while_lstm_cell_25_1041801_0:h
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_25_1041797:h,
while_lstm_cell_25_1041799:h(
while_lstm_cell_25_1041801:h¢*while/lstm_cell_25/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0·
*while/lstm_cell_25/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_25_1041797_0while_lstm_cell_25_1041799_0while_lstm_cell_25_1041801_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_lstm_cell_25_layer_call_and_return_conditional_losses_1041714Ü
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_25/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éèÒ
while/Identity_4Identity3while/lstm_cell_25/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/Identity_5Identity3while/lstm_cell_25/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿy

while/NoOpNoOp+^while/lstm_cell_25/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_25_1041797while_lstm_cell_25_1041797_0":
while_lstm_cell_25_1041799while_lstm_cell_25_1041799_0":
while_lstm_cell_25_1041801while_lstm_cell_25_1041801_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2X
*while/lstm_cell_25/StatefulPartitionedCall*while/lstm_cell_25/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
º
È
while_cond_1041581
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1041581___redundant_placeholder05
1while_while_cond_1041581___redundant_placeholder15
1while_while_cond_1041581___redundant_placeholder25
1while_while_cond_1041581___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:

ß
#__inference__traced_restore_1044090
file_prefix4
 assignvariableop_dense_75_kernel:

è/
 assignvariableop_1_dense_75_bias:	è6
"assignvariableop_2_dense_76_kernel:
èÒ/
 assignvariableop_3_dense_76_bias:	Ò5
"assignvariableop_4_dense_77_kernel:	Ò.
 assignvariableop_5_dense_77_bias:&
assignvariableop_6_adam_iter:	 (
assignvariableop_7_adam_beta_1: (
assignvariableop_8_adam_beta_2: '
assignvariableop_9_adam_decay: 0
&assignvariableop_10_adam_learning_rate: A
/assignvariableop_11_lstm_25_lstm_cell_25_kernel:hK
9assignvariableop_12_lstm_25_lstm_cell_25_recurrent_kernel:h;
-assignvariableop_13_lstm_25_lstm_cell_25_bias:h#
assignvariableop_14_total: #
assignvariableop_15_count: %
assignvariableop_16_total_1: %
assignvariableop_17_count_1: >
*assignvariableop_18_adam_dense_75_kernel_m:

è7
(assignvariableop_19_adam_dense_75_bias_m:	è>
*assignvariableop_20_adam_dense_76_kernel_m:
èÒ7
(assignvariableop_21_adam_dense_76_bias_m:	Ò=
*assignvariableop_22_adam_dense_77_kernel_m:	Ò6
(assignvariableop_23_adam_dense_77_bias_m:H
6assignvariableop_24_adam_lstm_25_lstm_cell_25_kernel_m:hR
@assignvariableop_25_adam_lstm_25_lstm_cell_25_recurrent_kernel_m:hB
4assignvariableop_26_adam_lstm_25_lstm_cell_25_bias_m:h>
*assignvariableop_27_adam_dense_75_kernel_v:

è7
(assignvariableop_28_adam_dense_75_bias_v:	è>
*assignvariableop_29_adam_dense_76_kernel_v:
èÒ7
(assignvariableop_30_adam_dense_76_bias_v:	Ò=
*assignvariableop_31_adam_dense_77_kernel_v:	Ò6
(assignvariableop_32_adam_dense_77_bias_v:H
6assignvariableop_33_adam_lstm_25_lstm_cell_25_kernel_v:hR
@assignvariableop_34_adam_lstm_25_lstm_cell_25_recurrent_kernel_v:hB
4assignvariableop_35_adam_lstm_25_lstm_cell_25_bias_v:h
identity_37¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_24¢AssignVariableOp_25¢AssignVariableOp_26¢AssignVariableOp_27¢AssignVariableOp_28¢AssignVariableOp_29¢AssignVariableOp_3¢AssignVariableOp_30¢AssignVariableOp_31¢AssignVariableOp_32¢AssignVariableOp_33¢AssignVariableOp_34¢AssignVariableOp_35¢AssignVariableOp_4¢AssignVariableOp_5¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:%*
dtype0*®
value¤B¡%B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHº
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:%*
dtype0*]
valueTBR%B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B Ú
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*ª
_output_shapes
:::::::::::::::::::::::::::::::::::::*3
dtypes)
'2%	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOp assignvariableop_dense_75_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_75_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_2AssignVariableOp"assignvariableop_2_dense_76_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOp assignvariableop_3_dense_76_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_4AssignVariableOp"assignvariableop_4_dense_77_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_5AssignVariableOp assignvariableop_5_dense_77_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_iterIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_7AssignVariableOpassignvariableop_7_adam_beta_1Identity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_beta_2Identity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_decayIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_10AssignVariableOp&assignvariableop_10_adam_learning_rateIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_11AssignVariableOp/assignvariableop_11_lstm_25_lstm_cell_25_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:ª
AssignVariableOp_12AssignVariableOp9assignvariableop_12_lstm_25_lstm_cell_25_recurrent_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_13AssignVariableOp-assignvariableop_13_lstm_25_lstm_cell_25_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_14AssignVariableOpassignvariableop_14_totalIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_15AssignVariableOpassignvariableop_15_countIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_16AssignVariableOpassignvariableop_16_total_1Identity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_17AssignVariableOpassignvariableop_17_count_1Identity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_18AssignVariableOp*assignvariableop_18_adam_dense_75_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_19AssignVariableOp(assignvariableop_19_adam_dense_75_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_20AssignVariableOp*assignvariableop_20_adam_dense_76_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_21AssignVariableOp(assignvariableop_21_adam_dense_76_bias_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_22AssignVariableOp*assignvariableop_22_adam_dense_77_kernel_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_23AssignVariableOp(assignvariableop_23_adam_dense_77_bias_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_24AssignVariableOp6assignvariableop_24_adam_lstm_25_lstm_cell_25_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:±
AssignVariableOp_25AssignVariableOp@assignvariableop_25_adam_lstm_25_lstm_cell_25_recurrent_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:¥
AssignVariableOp_26AssignVariableOp4assignvariableop_26_adam_lstm_25_lstm_cell_25_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_27AssignVariableOp*assignvariableop_27_adam_dense_75_kernel_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_28AssignVariableOp(assignvariableop_28_adam_dense_75_bias_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_29AssignVariableOp*assignvariableop_29_adam_dense_76_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_30AssignVariableOp(assignvariableop_30_adam_dense_76_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_31AssignVariableOp*assignvariableop_31_adam_dense_77_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_32AssignVariableOp(assignvariableop_32_adam_dense_77_bias_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_25_lstm_cell_25_kernel_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:±
AssignVariableOp_34AssignVariableOp@assignvariableop_34_adam_lstm_25_lstm_cell_25_recurrent_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:¥
AssignVariableOp_35AssignVariableOp4assignvariableop_35_adam_lstm_25_lstm_cell_25_bias_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ç
Identity_36Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_37IdentityIdentity_36:output:0^NoOp_1*
T0*
_output_shapes
: Ô
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_37Identity_37:output:0*]
_input_shapesL
J: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
ý	
f
G__inference_dropout_76_layer_call_and_return_conditional_losses_1043676

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿèC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>§
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿèp
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿèj
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿèZ
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿè:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè
 
_user_specified_nameinputs
¨

ù
E__inference_dense_76_layer_call_and_return_conditional_losses_1042058

inputs2
matmul_readvariableop_resource:
èÒ.
biasadd_readvariableop_resource:	Ò
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
èÒ*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÒs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:Ò*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÒQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÒb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÒw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿè: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè
 
_user_specified_nameinputs
þ
³
)__inference_lstm_25_layer_call_fn_1043019

inputs
unknown:h
	unknown_0:h
	unknown_1:h
identity¢StatefulPartitionedCallê
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_25_layer_call_and_return_conditional_losses_1042371s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
Þ
e
G__inference_dropout_76_layer_call_and_return_conditional_losses_1043664

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿè:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè
 
_user_specified_nameinputs
8
Ë
while_body_1041916
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_25_matmul_readvariableop_resource_0:hG
5while_lstm_cell_25_matmul_1_readvariableop_resource_0:hB
4while_lstm_cell_25_biasadd_readvariableop_resource_0:h
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_25_matmul_readvariableop_resource:hE
3while_lstm_cell_25_matmul_1_readvariableop_resource:h@
2while_lstm_cell_25_biasadd_readvariableop_resource:h¢)while/lstm_cell_25/BiasAdd/ReadVariableOp¢(while/lstm_cell_25/MatMul/ReadVariableOp¢*while/lstm_cell_25/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
(while/lstm_cell_25/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_25_matmul_readvariableop_resource_0*
_output_shapes

:h*
dtype0¹
while/lstm_cell_25/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_25/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh 
*while/lstm_cell_25/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_25_matmul_1_readvariableop_resource_0*
_output_shapes

:h*
dtype0 
while/lstm_cell_25/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_25/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
while/lstm_cell_25/addAddV2#while/lstm_cell_25/MatMul:product:0%while/lstm_cell_25/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
)while/lstm_cell_25/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_25_biasadd_readvariableop_resource_0*
_output_shapes
:h*
dtype0¦
while/lstm_cell_25/BiasAddBiasAddwhile/lstm_cell_25/add:z:01while/lstm_cell_25/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿhd
"while/lstm_cell_25/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_25/splitSplit+while/lstm_cell_25/split/split_dim:output:0#while/lstm_cell_25/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_splitz
while/lstm_cell_25/SigmoidSigmoid!while/lstm_cell_25/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|
while/lstm_cell_25/Sigmoid_1Sigmoid!while/lstm_cell_25/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_25/mulMul while/lstm_cell_25/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿt
while/lstm_cell_25/ReluRelu!while/lstm_cell_25/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_25/mul_1Mulwhile/lstm_cell_25/Sigmoid:y:0%while/lstm_cell_25/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_25/add_1AddV2while/lstm_cell_25/mul:z:0while/lstm_cell_25/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|
while/lstm_cell_25/Sigmoid_2Sigmoid!while/lstm_cell_25/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿq
while/lstm_cell_25/Relu_1Reluwhile/lstm_cell_25/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_25/mul_2Mul while/lstm_cell_25/Sigmoid_2:y:0'while/lstm_cell_25/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÅ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_25/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éèÒy
while/Identity_4Identitywhile/lstm_cell_25/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿy
while/Identity_5Identitywhile/lstm_cell_25/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÐ

while/NoOpNoOp*^while/lstm_cell_25/BiasAdd/ReadVariableOp)^while/lstm_cell_25/MatMul/ReadVariableOp+^while/lstm_cell_25/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_25_biasadd_readvariableop_resource4while_lstm_cell_25_biasadd_readvariableop_resource_0"l
3while_lstm_cell_25_matmul_1_readvariableop_resource5while_lstm_cell_25_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_25_matmul_readvariableop_resource3while_lstm_cell_25_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2V
)while/lstm_cell_25/BiasAdd/ReadVariableOp)while/lstm_cell_25/BiasAdd/ReadVariableOp2T
(while/lstm_cell_25/MatMul/ReadVariableOp(while/lstm_cell_25/MatMul/ReadVariableOp2X
*while/lstm_cell_25/MatMul_1/ReadVariableOp*while/lstm_cell_25/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
¥

÷
E__inference_dense_77_layer_call_and_return_conditional_losses_1043743

inputs1
matmul_readvariableop_resource:	Ò-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	Ò*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿÒ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÒ
 
_user_specified_nameinputs
Þ
e
G__inference_dropout_77_layer_call_and_return_conditional_losses_1042069

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÒ\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÒ"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿÒ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÒ
 
_user_specified_nameinputs
º
È
while_cond_1043506
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1043506___redundant_placeholder05
1while_while_cond_1043506___redundant_placeholder15
1while_while_cond_1043506___redundant_placeholder25
1while_while_cond_1043506___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
Þ
e
G__inference_dropout_76_layer_call_and_return_conditional_losses_1042045

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿè:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè
 
_user_specified_nameinputs


è
lstm_25_while_cond_1042818,
(lstm_25_while_lstm_25_while_loop_counter2
.lstm_25_while_lstm_25_while_maximum_iterations
lstm_25_while_placeholder
lstm_25_while_placeholder_1
lstm_25_while_placeholder_2
lstm_25_while_placeholder_3.
*lstm_25_while_less_lstm_25_strided_slice_1E
Alstm_25_while_lstm_25_while_cond_1042818___redundant_placeholder0E
Alstm_25_while_lstm_25_while_cond_1042818___redundant_placeholder1E
Alstm_25_while_lstm_25_while_cond_1042818___redundant_placeholder2E
Alstm_25_while_lstm_25_while_cond_1042818___redundant_placeholder3
lstm_25_while_identity

lstm_25/while/LessLesslstm_25_while_placeholder*lstm_25_while_less_lstm_25_strided_slice_1*
T0*
_output_shapes
: [
lstm_25/while/IdentityIdentitylstm_25/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_25_while_identitylstm_25/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
¢'
¢
J__inference_sequential_25_layer_call_and_return_conditional_losses_1042539
lstm_25_input!
lstm_25_1042512:h!
lstm_25_1042514:h
lstm_25_1042516:h$
dense_75_1042521:

è
dense_75_1042523:	è$
dense_76_1042527:
èÒ
dense_76_1042529:	Ò#
dense_77_1042533:	Ò
dense_77_1042535:
identity¢ dense_75/StatefulPartitionedCall¢ dense_76/StatefulPartitionedCall¢ dense_77/StatefulPartitionedCall¢"dropout_75/StatefulPartitionedCall¢"dropout_76/StatefulPartitionedCall¢"dropout_77/StatefulPartitionedCall¢lstm_25/StatefulPartitionedCall
lstm_25/StatefulPartitionedCallStatefulPartitionedCalllstm_25_inputlstm_25_1042512lstm_25_1042514lstm_25_1042516*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_25_layer_call_and_return_conditional_losses_1042371ó
"dropout_75/StatefulPartitionedCallStatefulPartitionedCall(lstm_25/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dropout_75_layer_call_and_return_conditional_losses_1042212ã
flatten_25/PartitionedCallPartitionedCall+dropout_75/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_flatten_25_layer_call_and_return_conditional_losses_1042021
 dense_75/StatefulPartitionedCallStatefulPartitionedCall#flatten_25/PartitionedCall:output:0dense_75_1042521dense_75_1042523*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_75_layer_call_and_return_conditional_losses_1042034
"dropout_76/StatefulPartitionedCallStatefulPartitionedCall)dense_75/StatefulPartitionedCall:output:0#^dropout_75/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dropout_76_layer_call_and_return_conditional_losses_1042173
 dense_76/StatefulPartitionedCallStatefulPartitionedCall+dropout_76/StatefulPartitionedCall:output:0dense_76_1042527dense_76_1042529*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÒ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_76_layer_call_and_return_conditional_losses_1042058
"dropout_77/StatefulPartitionedCallStatefulPartitionedCall)dense_76/StatefulPartitionedCall:output:0#^dropout_76/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÒ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dropout_77_layer_call_and_return_conditional_losses_1042140
 dense_77/StatefulPartitionedCallStatefulPartitionedCall+dropout_77/StatefulPartitionedCall:output:0dense_77_1042533dense_77_1042535*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_77_layer_call_and_return_conditional_losses_1042082x
IdentityIdentity)dense_77/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
NoOpNoOp!^dense_75/StatefulPartitionedCall!^dense_76/StatefulPartitionedCall!^dense_77/StatefulPartitionedCall#^dropout_75/StatefulPartitionedCall#^dropout_76/StatefulPartitionedCall#^dropout_77/StatefulPartitionedCall ^lstm_25/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):ÿÿÿÿÿÿÿÿÿ2: : : : : : : : : 2D
 dense_75/StatefulPartitionedCall dense_75/StatefulPartitionedCall2D
 dense_76/StatefulPartitionedCall dense_76/StatefulPartitionedCall2D
 dense_77/StatefulPartitionedCall dense_77/StatefulPartitionedCall2H
"dropout_75/StatefulPartitionedCall"dropout_75/StatefulPartitionedCall2H
"dropout_76/StatefulPartitionedCall"dropout_76/StatefulPartitionedCall2H
"dropout_77/StatefulPartitionedCall"dropout_77/StatefulPartitionedCall2B
lstm_25/StatefulPartitionedCalllstm_25/StatefulPartitionedCall:Z V
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
'
_user_specified_namelstm_25_input
º
È
while_cond_1043077
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1043077___redundant_placeholder05
1while_while_cond_1043077___redundant_placeholder15
1while_while_cond_1043077___redundant_placeholder25
1while_while_cond_1043077___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:


f
G__inference_dropout_75_layer_call_and_return_conditional_losses_1043618

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?h
dropout/MulMulinputsdropout/Const:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=ª
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2s
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2m
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2]
IdentityIdentitydropout/Mul_1:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ2:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
¨

ù
E__inference_dense_75_layer_call_and_return_conditional_losses_1042034

inputs2
matmul_readvariableop_resource:

è.
biasadd_readvariableop_resource:	è
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:

è*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿès
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:è*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿèQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿèb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿèw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
_user_specified_nameinputs
º
È
while_cond_1043363
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1043363___redundant_placeholder05
1while_while_cond_1043363___redundant_placeholder15
1while_while_cond_1043363___redundant_placeholder25
1while_while_cond_1043363___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
8
Ë
while_body_1043364
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_25_matmul_readvariableop_resource_0:hG
5while_lstm_cell_25_matmul_1_readvariableop_resource_0:hB
4while_lstm_cell_25_biasadd_readvariableop_resource_0:h
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_25_matmul_readvariableop_resource:hE
3while_lstm_cell_25_matmul_1_readvariableop_resource:h@
2while_lstm_cell_25_biasadd_readvariableop_resource:h¢)while/lstm_cell_25/BiasAdd/ReadVariableOp¢(while/lstm_cell_25/MatMul/ReadVariableOp¢*while/lstm_cell_25/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
(while/lstm_cell_25/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_25_matmul_readvariableop_resource_0*
_output_shapes

:h*
dtype0¹
while/lstm_cell_25/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_25/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh 
*while/lstm_cell_25/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_25_matmul_1_readvariableop_resource_0*
_output_shapes

:h*
dtype0 
while/lstm_cell_25/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_25/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
while/lstm_cell_25/addAddV2#while/lstm_cell_25/MatMul:product:0%while/lstm_cell_25/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
)while/lstm_cell_25/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_25_biasadd_readvariableop_resource_0*
_output_shapes
:h*
dtype0¦
while/lstm_cell_25/BiasAddBiasAddwhile/lstm_cell_25/add:z:01while/lstm_cell_25/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿhd
"while/lstm_cell_25/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_25/splitSplit+while/lstm_cell_25/split/split_dim:output:0#while/lstm_cell_25/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_splitz
while/lstm_cell_25/SigmoidSigmoid!while/lstm_cell_25/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|
while/lstm_cell_25/Sigmoid_1Sigmoid!while/lstm_cell_25/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_25/mulMul while/lstm_cell_25/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿt
while/lstm_cell_25/ReluRelu!while/lstm_cell_25/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_25/mul_1Mulwhile/lstm_cell_25/Sigmoid:y:0%while/lstm_cell_25/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_25/add_1AddV2while/lstm_cell_25/mul:z:0while/lstm_cell_25/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|
while/lstm_cell_25/Sigmoid_2Sigmoid!while/lstm_cell_25/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿq
while/lstm_cell_25/Relu_1Reluwhile/lstm_cell_25/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_25/mul_2Mul while/lstm_cell_25/Sigmoid_2:y:0'while/lstm_cell_25/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÅ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_25/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éèÒy
while/Identity_4Identitywhile/lstm_cell_25/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿy
while/Identity_5Identitywhile/lstm_cell_25/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÐ

while/NoOpNoOp*^while/lstm_cell_25/BiasAdd/ReadVariableOp)^while/lstm_cell_25/MatMul/ReadVariableOp+^while/lstm_cell_25/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_25_biasadd_readvariableop_resource4while_lstm_cell_25_biasadd_readvariableop_resource_0"l
3while_lstm_cell_25_matmul_1_readvariableop_resource5while_lstm_cell_25_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_25_matmul_readvariableop_resource3while_lstm_cell_25_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2V
)while/lstm_cell_25/BiasAdd/ReadVariableOp)while/lstm_cell_25/BiasAdd/ReadVariableOp2T
(while/lstm_cell_25/MatMul/ReadVariableOp(while/lstm_cell_25/MatMul/ReadVariableOp2X
*while/lstm_cell_25/MatMul_1/ReadVariableOp*while/lstm_cell_25/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
Þ
e
G__inference_dropout_77_layer_call_and_return_conditional_losses_1043711

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÒ\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÒ"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿÒ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÒ
 
_user_specified_nameinputs
Ì

I__inference_lstm_cell_25_layer_call_and_return_conditional_losses_1041714

inputs

states
states_10
matmul_readvariableop_resource:h2
 matmul_1_readvariableop_resource:h-
biasadd_readvariableop_resource:h
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:h*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿhx
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:h*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿhd
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿhr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:h*
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿhQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¶
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿN
ReluRelusplit:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_namestates:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_namestates
¥

÷
E__inference_dense_77_layer_call_and_return_conditional_losses_1042082

inputs1
matmul_readvariableop_resource:	Ò-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	Ò*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿÒ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÒ
 
_user_specified_nameinputs
£

(sequential_25_lstm_25_while_cond_1041390H
Dsequential_25_lstm_25_while_sequential_25_lstm_25_while_loop_counterN
Jsequential_25_lstm_25_while_sequential_25_lstm_25_while_maximum_iterations+
'sequential_25_lstm_25_while_placeholder-
)sequential_25_lstm_25_while_placeholder_1-
)sequential_25_lstm_25_while_placeholder_2-
)sequential_25_lstm_25_while_placeholder_3J
Fsequential_25_lstm_25_while_less_sequential_25_lstm_25_strided_slice_1a
]sequential_25_lstm_25_while_sequential_25_lstm_25_while_cond_1041390___redundant_placeholder0a
]sequential_25_lstm_25_while_sequential_25_lstm_25_while_cond_1041390___redundant_placeholder1a
]sequential_25_lstm_25_while_sequential_25_lstm_25_while_cond_1041390___redundant_placeholder2a
]sequential_25_lstm_25_while_sequential_25_lstm_25_while_cond_1041390___redundant_placeholder3(
$sequential_25_lstm_25_while_identity
º
 sequential_25/lstm_25/while/LessLess'sequential_25_lstm_25_while_placeholderFsequential_25_lstm_25_while_less_sequential_25_lstm_25_strided_slice_1*
T0*
_output_shapes
: w
$sequential_25/lstm_25/while/IdentityIdentity$sequential_25/lstm_25/while/Less:z:0*
T0
*
_output_shapes
: "U
$sequential_25_lstm_25_while_identity-sequential_25/lstm_25/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
¨
µ
)__inference_lstm_25_layer_call_fn_1042986
inputs_0
unknown:h
	unknown_0:h
	unknown_1:h
identity¢StatefulPartitionedCallõ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_25_layer_call_and_return_conditional_losses_1041651|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
¨
µ
)__inference_lstm_25_layer_call_fn_1042997
inputs_0
unknown:h
	unknown_0:h
	unknown_1:h
identity¢StatefulPartitionedCallõ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lstm_25_layer_call_and_return_conditional_losses_1041842|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
8
Ë
while_body_1043507
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_25_matmul_readvariableop_resource_0:hG
5while_lstm_cell_25_matmul_1_readvariableop_resource_0:hB
4while_lstm_cell_25_biasadd_readvariableop_resource_0:h
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_25_matmul_readvariableop_resource:hE
3while_lstm_cell_25_matmul_1_readvariableop_resource:h@
2while_lstm_cell_25_biasadd_readvariableop_resource:h¢)while/lstm_cell_25/BiasAdd/ReadVariableOp¢(while/lstm_cell_25/MatMul/ReadVariableOp¢*while/lstm_cell_25/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
(while/lstm_cell_25/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_25_matmul_readvariableop_resource_0*
_output_shapes

:h*
dtype0¹
while/lstm_cell_25/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_25/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh 
*while/lstm_cell_25/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_25_matmul_1_readvariableop_resource_0*
_output_shapes

:h*
dtype0 
while/lstm_cell_25/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_25/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
while/lstm_cell_25/addAddV2#while/lstm_cell_25/MatMul:product:0%while/lstm_cell_25/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
)while/lstm_cell_25/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_25_biasadd_readvariableop_resource_0*
_output_shapes
:h*
dtype0¦
while/lstm_cell_25/BiasAddBiasAddwhile/lstm_cell_25/add:z:01while/lstm_cell_25/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿhd
"while/lstm_cell_25/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_25/splitSplit+while/lstm_cell_25/split/split_dim:output:0#while/lstm_cell_25/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_splitz
while/lstm_cell_25/SigmoidSigmoid!while/lstm_cell_25/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|
while/lstm_cell_25/Sigmoid_1Sigmoid!while/lstm_cell_25/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_25/mulMul while/lstm_cell_25/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿt
while/lstm_cell_25/ReluRelu!while/lstm_cell_25/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_25/mul_1Mulwhile/lstm_cell_25/Sigmoid:y:0%while/lstm_cell_25/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_25/add_1AddV2while/lstm_cell_25/mul:z:0while/lstm_cell_25/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|
while/lstm_cell_25/Sigmoid_2Sigmoid!while/lstm_cell_25/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿq
while/lstm_cell_25/Relu_1Reluwhile/lstm_cell_25/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_25/mul_2Mul while/lstm_cell_25/Sigmoid_2:y:0'while/lstm_cell_25/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÅ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_25/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éèÒy
while/Identity_4Identitywhile/lstm_cell_25/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿy
while/Identity_5Identitywhile/lstm_cell_25/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÐ

while/NoOpNoOp*^while/lstm_cell_25/BiasAdd/ReadVariableOp)^while/lstm_cell_25/MatMul/ReadVariableOp+^while/lstm_cell_25/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_25_biasadd_readvariableop_resource4while_lstm_cell_25_biasadd_readvariableop_resource_0"l
3while_lstm_cell_25_matmul_1_readvariableop_resource5while_lstm_cell_25_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_25_matmul_readvariableop_resource3while_lstm_cell_25_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2V
)while/lstm_cell_25/BiasAdd/ReadVariableOp)while/lstm_cell_25/BiasAdd/ReadVariableOp2T
(while/lstm_cell_25/MatMul/ReadVariableOp(while/lstm_cell_25/MatMul/ReadVariableOp2X
*while/lstm_cell_25/MatMul_1/ReadVariableOp*while/lstm_cell_25/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: "ÛL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*»
serving_default§
K
lstm_25_input:
serving_default_lstm_25_input:0ÿÿÿÿÿÿÿÿÿ2<
dense_770
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:¿Á
¶
layer_with_weights-0
layer-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
layer_with_weights-2
layer-5
layer-6
layer_with_weights-3
layer-7
		optimizer

	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures"
_tf_keras_sequential
Ú
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
_random_generator
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
¼
	variables
trainable_variables
regularization_losses
	keras_api
_random_generator
 __call__
*!&call_and_return_all_conditional_losses"
_tf_keras_layer
¥
"	variables
#trainable_variables
$regularization_losses
%	keras_api
&__call__
*'&call_and_return_all_conditional_losses"
_tf_keras_layer
»

(kernel
)bias
*	variables
+trainable_variables
,regularization_losses
-	keras_api
.__call__
*/&call_and_return_all_conditional_losses"
_tf_keras_layer
¼
0	variables
1trainable_variables
2regularization_losses
3	keras_api
4_random_generator
5__call__
*6&call_and_return_all_conditional_losses"
_tf_keras_layer
»

7kernel
8bias
9	variables
:trainable_variables
;regularization_losses
<	keras_api
=__call__
*>&call_and_return_all_conditional_losses"
_tf_keras_layer
¼
?	variables
@trainable_variables
Aregularization_losses
B	keras_api
C_random_generator
D__call__
*E&call_and_return_all_conditional_losses"
_tf_keras_layer
»

Fkernel
Gbias
H	variables
Itrainable_variables
Jregularization_losses
K	keras_api
L__call__
*M&call_and_return_all_conditional_losses"
_tf_keras_layer

Niter

Obeta_1

Pbeta_2
	Qdecay
Rlearning_rate(m)m7m8m Fm¡Gm¢Sm£Tm¤Um¥(v¦)v§7v¨8v©FvªGv«Sv¬Tv­Uv®"
	optimizer
_
S0
T1
U2
(3
)4
75
86
F7
G8"
trackable_list_wrapper
_
S0
T1
U2
(3
)4
75
86
F7
G8"
trackable_list_wrapper
 "
trackable_list_wrapper
Ê
Vnon_trainable_variables

Wlayers
Xmetrics
Ylayer_regularization_losses
Zlayer_metrics

	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
2
/__inference_sequential_25_layer_call_fn_1042110
/__inference_sequential_25_layer_call_fn_1042568
/__inference_sequential_25_layer_call_fn_1042591
/__inference_sequential_25_layer_call_fn_1042479À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ö2ó
J__inference_sequential_25_layer_call_and_return_conditional_losses_1042760
J__inference_sequential_25_layer_call_and_return_conditional_losses_1042950
J__inference_sequential_25_layer_call_and_return_conditional_losses_1042509
J__inference_sequential_25_layer_call_and_return_conditional_losses_1042539À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ÓBÐ
"__inference__wrapped_model_1041501lstm_25_input"
²
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
,
[serving_default"
signature_map
ø
\
state_size

Skernel
Trecurrent_kernel
Ubias
]	variables
^trainable_variables
_regularization_losses
`	keras_api
a_random_generator
b__call__
*c&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
5
S0
T1
U2"
trackable_list_wrapper
5
S0
T1
U2"
trackable_list_wrapper
 "
trackable_list_wrapper
¹

dstates
enon_trainable_variables

flayers
gmetrics
hlayer_regularization_losses
ilayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
2
)__inference_lstm_25_layer_call_fn_1042986
)__inference_lstm_25_layer_call_fn_1042997
)__inference_lstm_25_layer_call_fn_1043008
)__inference_lstm_25_layer_call_fn_1043019Õ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ó2ð
D__inference_lstm_25_layer_call_and_return_conditional_losses_1043162
D__inference_lstm_25_layer_call_and_return_conditional_losses_1043305
D__inference_lstm_25_layer_call_and_return_conditional_losses_1043448
D__inference_lstm_25_layer_call_and_return_conditional_losses_1043591Õ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­
jnon_trainable_variables

klayers
lmetrics
mlayer_regularization_losses
nlayer_metrics
	variables
trainable_variables
regularization_losses
 __call__
*!&call_and_return_all_conditional_losses
&!"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
2
,__inference_dropout_75_layer_call_fn_1043596
,__inference_dropout_75_layer_call_fn_1043601´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Ì2É
G__inference_dropout_75_layer_call_and_return_conditional_losses_1043606
G__inference_dropout_75_layer_call_and_return_conditional_losses_1043618´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­
onon_trainable_variables

players
qmetrics
rlayer_regularization_losses
slayer_metrics
"	variables
#trainable_variables
$regularization_losses
&__call__
*'&call_and_return_all_conditional_losses
&'"call_and_return_conditional_losses"
_generic_user_object
Ö2Ó
,__inference_flatten_25_layer_call_fn_1043623¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ñ2î
G__inference_flatten_25_layer_call_and_return_conditional_losses_1043629¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
#:!

è2dense_75/kernel
:è2dense_75/bias
.
(0
)1"
trackable_list_wrapper
.
(0
)1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
tnon_trainable_variables

ulayers
vmetrics
wlayer_regularization_losses
xlayer_metrics
*	variables
+trainable_variables
,regularization_losses
.__call__
*/&call_and_return_all_conditional_losses
&/"call_and_return_conditional_losses"
_generic_user_object
Ô2Ñ
*__inference_dense_75_layer_call_fn_1043638¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ï2ì
E__inference_dense_75_layer_call_and_return_conditional_losses_1043649¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­
ynon_trainable_variables

zlayers
{metrics
|layer_regularization_losses
}layer_metrics
0	variables
1trainable_variables
2regularization_losses
5__call__
*6&call_and_return_all_conditional_losses
&6"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
2
,__inference_dropout_76_layer_call_fn_1043654
,__inference_dropout_76_layer_call_fn_1043659´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Ì2É
G__inference_dropout_76_layer_call_and_return_conditional_losses_1043664
G__inference_dropout_76_layer_call_and_return_conditional_losses_1043676´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
#:!
èÒ2dense_76/kernel
:Ò2dense_76/bias
.
70
81"
trackable_list_wrapper
.
70
81"
trackable_list_wrapper
 "
trackable_list_wrapper
°
~non_trainable_variables

layers
metrics
 layer_regularization_losses
layer_metrics
9	variables
:trainable_variables
;regularization_losses
=__call__
*>&call_and_return_all_conditional_losses
&>"call_and_return_conditional_losses"
_generic_user_object
Ô2Ñ
*__inference_dense_76_layer_call_fn_1043685¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ï2ì
E__inference_dense_76_layer_call_and_return_conditional_losses_1043696¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
?	variables
@trainable_variables
Aregularization_losses
D__call__
*E&call_and_return_all_conditional_losses
&E"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
2
,__inference_dropout_77_layer_call_fn_1043701
,__inference_dropout_77_layer_call_fn_1043706´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Ì2É
G__inference_dropout_77_layer_call_and_return_conditional_losses_1043711
G__inference_dropout_77_layer_call_and_return_conditional_losses_1043723´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
": 	Ò2dense_77/kernel
:2dense_77/bias
.
F0
G1"
trackable_list_wrapper
.
F0
G1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
H	variables
Itrainable_variables
Jregularization_losses
L__call__
*M&call_and_return_all_conditional_losses
&M"call_and_return_conditional_losses"
_generic_user_object
Ô2Ñ
*__inference_dense_77_layer_call_fn_1043732¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ï2ì
E__inference_dense_77_layer_call_and_return_conditional_losses_1043743¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
-:+h2lstm_25/lstm_cell_25/kernel
7:5h2%lstm_25/lstm_cell_25/recurrent_kernel
':%h2lstm_25/lstm_cell_25/bias
 "
trackable_list_wrapper
X
0
1
2
3
4
5
6
7"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ÒBÏ
%__inference_signature_wrapper_1042975lstm_25_input"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
5
S0
T1
U2"
trackable_list_wrapper
5
S0
T1
U2"
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
]	variables
^trainable_variables
_regularization_losses
b__call__
*c&call_and_return_all_conditional_losses
&c"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
¤2¡
.__inference_lstm_cell_25_layer_call_fn_1043760
.__inference_lstm_cell_25_layer_call_fn_1043777¾
µ²±
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Ú2×
I__inference_lstm_cell_25_layer_call_and_return_conditional_losses_1043809
I__inference_lstm_cell_25_layer_call_and_return_conditional_losses_1043841¾
µ²±
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
R

total

count
	variables
	keras_api"
_tf_keras_metric
c

total

count

_fn_kwargs
	variables
	keras_api"
_tf_keras_metric
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
:  (2total
:  (2count
0
0
1"
trackable_list_wrapper
.
	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
0
1"
trackable_list_wrapper
.
	variables"
_generic_user_object
(:&

è2Adam/dense_75/kernel/m
!:è2Adam/dense_75/bias/m
(:&
èÒ2Adam/dense_76/kernel/m
!:Ò2Adam/dense_76/bias/m
':%	Ò2Adam/dense_77/kernel/m
 :2Adam/dense_77/bias/m
2:0h2"Adam/lstm_25/lstm_cell_25/kernel/m
<::h2,Adam/lstm_25/lstm_cell_25/recurrent_kernel/m
,:*h2 Adam/lstm_25/lstm_cell_25/bias/m
(:&

è2Adam/dense_75/kernel/v
!:è2Adam/dense_75/bias/v
(:&
èÒ2Adam/dense_76/kernel/v
!:Ò2Adam/dense_76/bias/v
':%	Ò2Adam/dense_77/kernel/v
 :2Adam/dense_77/bias/v
2:0h2"Adam/lstm_25/lstm_cell_25/kernel/v
<::h2,Adam/lstm_25/lstm_cell_25/recurrent_kernel/v
,:*h2 Adam/lstm_25/lstm_cell_25/bias/v¢
"__inference__wrapped_model_1041501|	STU()78FG:¢7
0¢-
+(
lstm_25_inputÿÿÿÿÿÿÿÿÿ2
ª "3ª0
.
dense_77"
dense_77ÿÿÿÿÿÿÿÿÿ§
E__inference_dense_75_layer_call_and_return_conditional_losses_1043649^()0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ

ª "&¢#

0ÿÿÿÿÿÿÿÿÿè
 
*__inference_dense_75_layer_call_fn_1043638Q()0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ

ª "ÿÿÿÿÿÿÿÿÿè§
E__inference_dense_76_layer_call_and_return_conditional_losses_1043696^780¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿè
ª "&¢#

0ÿÿÿÿÿÿÿÿÿÒ
 
*__inference_dense_76_layer_call_fn_1043685Q780¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿè
ª "ÿÿÿÿÿÿÿÿÿÒ¦
E__inference_dense_77_layer_call_and_return_conditional_losses_1043743]FG0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿÒ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ~
*__inference_dense_77_layer_call_fn_1043732PFG0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿÒ
ª "ÿÿÿÿÿÿÿÿÿ¯
G__inference_dropout_75_layer_call_and_return_conditional_losses_1043606d7¢4
-¢*
$!
inputsÿÿÿÿÿÿÿÿÿ2
p 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ2
 ¯
G__inference_dropout_75_layer_call_and_return_conditional_losses_1043618d7¢4
-¢*
$!
inputsÿÿÿÿÿÿÿÿÿ2
p
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ2
 
,__inference_dropout_75_layer_call_fn_1043596W7¢4
-¢*
$!
inputsÿÿÿÿÿÿÿÿÿ2
p 
ª "ÿÿÿÿÿÿÿÿÿ2
,__inference_dropout_75_layer_call_fn_1043601W7¢4
-¢*
$!
inputsÿÿÿÿÿÿÿÿÿ2
p
ª "ÿÿÿÿÿÿÿÿÿ2©
G__inference_dropout_76_layer_call_and_return_conditional_losses_1043664^4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿè
p 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿè
 ©
G__inference_dropout_76_layer_call_and_return_conditional_losses_1043676^4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿè
p
ª "&¢#

0ÿÿÿÿÿÿÿÿÿè
 
,__inference_dropout_76_layer_call_fn_1043654Q4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿè
p 
ª "ÿÿÿÿÿÿÿÿÿè
,__inference_dropout_76_layer_call_fn_1043659Q4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿè
p
ª "ÿÿÿÿÿÿÿÿÿè©
G__inference_dropout_77_layer_call_and_return_conditional_losses_1043711^4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿÒ
p 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿÒ
 ©
G__inference_dropout_77_layer_call_and_return_conditional_losses_1043723^4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿÒ
p
ª "&¢#

0ÿÿÿÿÿÿÿÿÿÒ
 
,__inference_dropout_77_layer_call_fn_1043701Q4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿÒ
p 
ª "ÿÿÿÿÿÿÿÿÿÒ
,__inference_dropout_77_layer_call_fn_1043706Q4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿÒ
p
ª "ÿÿÿÿÿÿÿÿÿÒ¨
G__inference_flatten_25_layer_call_and_return_conditional_losses_1043629]3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ2
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ

 
,__inference_flatten_25_layer_call_fn_1043623P3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ2
ª "ÿÿÿÿÿÿÿÿÿ
Ó
D__inference_lstm_25_layer_call_and_return_conditional_losses_1043162STUO¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Ó
D__inference_lstm_25_layer_call_and_return_conditional_losses_1043305STUO¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p

 
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 ¹
D__inference_lstm_25_layer_call_and_return_conditional_losses_1043448qSTU?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ2

 
p 

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ2
 ¹
D__inference_lstm_25_layer_call_and_return_conditional_losses_1043591qSTU?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ2

 
p

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ2
 ª
)__inference_lstm_25_layer_call_fn_1042986}STUO¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿª
)__inference_lstm_25_layer_call_fn_1042997}STUO¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p

 
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
)__inference_lstm_25_layer_call_fn_1043008dSTU?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ2

 
p 

 
ª "ÿÿÿÿÿÿÿÿÿ2
)__inference_lstm_25_layer_call_fn_1043019dSTU?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ2

 
p

 
ª "ÿÿÿÿÿÿÿÿÿ2Ë
I__inference_lstm_cell_25_layer_call_and_return_conditional_losses_1043809ýSTU¢}
v¢s
 
inputsÿÿÿÿÿÿÿÿÿ
K¢H
"
states/0ÿÿÿÿÿÿÿÿÿ
"
states/1ÿÿÿÿÿÿÿÿÿ
p 
ª "s¢p
i¢f

0/0ÿÿÿÿÿÿÿÿÿ
EB

0/1/0ÿÿÿÿÿÿÿÿÿ

0/1/1ÿÿÿÿÿÿÿÿÿ
 Ë
I__inference_lstm_cell_25_layer_call_and_return_conditional_losses_1043841ýSTU¢}
v¢s
 
inputsÿÿÿÿÿÿÿÿÿ
K¢H
"
states/0ÿÿÿÿÿÿÿÿÿ
"
states/1ÿÿÿÿÿÿÿÿÿ
p
ª "s¢p
i¢f

0/0ÿÿÿÿÿÿÿÿÿ
EB

0/1/0ÿÿÿÿÿÿÿÿÿ

0/1/1ÿÿÿÿÿÿÿÿÿ
  
.__inference_lstm_cell_25_layer_call_fn_1043760íSTU¢}
v¢s
 
inputsÿÿÿÿÿÿÿÿÿ
K¢H
"
states/0ÿÿÿÿÿÿÿÿÿ
"
states/1ÿÿÿÿÿÿÿÿÿ
p 
ª "c¢`

0ÿÿÿÿÿÿÿÿÿ
A>

1/0ÿÿÿÿÿÿÿÿÿ

1/1ÿÿÿÿÿÿÿÿÿ 
.__inference_lstm_cell_25_layer_call_fn_1043777íSTU¢}
v¢s
 
inputsÿÿÿÿÿÿÿÿÿ
K¢H
"
states/0ÿÿÿÿÿÿÿÿÿ
"
states/1ÿÿÿÿÿÿÿÿÿ
p
ª "c¢`

0ÿÿÿÿÿÿÿÿÿ
A>

1/0ÿÿÿÿÿÿÿÿÿ

1/1ÿÿÿÿÿÿÿÿÿÄ
J__inference_sequential_25_layer_call_and_return_conditional_losses_1042509v	STU()78FGB¢?
8¢5
+(
lstm_25_inputÿÿÿÿÿÿÿÿÿ2
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 Ä
J__inference_sequential_25_layer_call_and_return_conditional_losses_1042539v	STU()78FGB¢?
8¢5
+(
lstm_25_inputÿÿÿÿÿÿÿÿÿ2
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ½
J__inference_sequential_25_layer_call_and_return_conditional_losses_1042760o	STU()78FG;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ2
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ½
J__inference_sequential_25_layer_call_and_return_conditional_losses_1042950o	STU()78FG;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ2
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
/__inference_sequential_25_layer_call_fn_1042110i	STU()78FGB¢?
8¢5
+(
lstm_25_inputÿÿÿÿÿÿÿÿÿ2
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
/__inference_sequential_25_layer_call_fn_1042479i	STU()78FGB¢?
8¢5
+(
lstm_25_inputÿÿÿÿÿÿÿÿÿ2
p

 
ª "ÿÿÿÿÿÿÿÿÿ
/__inference_sequential_25_layer_call_fn_1042568b	STU()78FG;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ2
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
/__inference_sequential_25_layer_call_fn_1042591b	STU()78FG;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ2
p

 
ª "ÿÿÿÿÿÿÿÿÿ·
%__inference_signature_wrapper_1042975	STU()78FGK¢H
¢ 
Aª>
<
lstm_25_input+(
lstm_25_inputÿÿÿÿÿÿÿÿÿ2"3ª0
.
dense_77"
dense_77ÿÿÿÿÿÿÿÿÿ